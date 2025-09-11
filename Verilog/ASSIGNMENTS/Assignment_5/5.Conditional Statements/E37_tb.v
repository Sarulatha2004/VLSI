module tb_mux;
reg a,b,sel;
wire y;
mux2x1 uut(.a(a), .b(b), .sel(sel), .y(y));
initial begin
$dumpfile("mux_wave.vcd");
$dumpvars(0, tb_mux);
$monitor(" Time=%t | sel=%b | a=%b | b=%b| y=%b",$time,sel,a,b,y);
sel=0;a=0;b=0;#10;
sel=0;a=0;b=1;#10;
sel=0;a=1;b=0;#10;
sel=0;a=1;b=1;#10;
sel=1;a=0;b=0;#10;
sel=1;a=0;b=1;#10;
sel=1;a=1;b=0;#10;
sel=1;a=1;b=1;#10;
#100 $finish;
end 
endmodule
