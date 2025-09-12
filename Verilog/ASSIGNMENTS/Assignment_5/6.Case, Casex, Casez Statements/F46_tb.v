
module tb_mux;
reg [3:0]d;
reg [1:0]sel;
wire y;
mux4_casex uut(.d(d), .sel(sel), .y(y));
initial begin
$dumpfile("mux_wave.vcd");
$dumpvars(0, tb_mux);
$monitor(" Time=%t | sel=%b | d=%b | y=%b",$time,sel,d,y);
sel=2'b00;d=4'b0101;#10;
sel=2'b01;d=4'b1011;#10;
sel=2'b10;d=4'b1111;#10;
sel=2'b11;d=4'b1100;#10;
sel=2'b00;d=4'b1011;#10;
sel=2'b01;d=4'b1111;#10;
sel=2'b10;d=4'b1000;#10;
sel=2'b11;d=4'b0011;#10;
#100 $finish;
end
endmodule

