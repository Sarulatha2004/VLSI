module tb_demux;
reg i,s;
wire y0,y1;
demux uut( .i(i), .s(s), .y0(y0), .y1(y1));
initial begin
$dumpfile("Demux_wave.vcd");
$dumpvars(0, tb_demux);
$display(" s i | y1 y0");
$monitor(" %b %b | %b %b ",s,i,y1,y0);
s=0;i=0; #10;
s=0;i=1; #10;
s=1;i=0; #10;
s=1;i=1; #10;
$finish;
end 
endmodule
