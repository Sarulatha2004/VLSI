module tb_bus_mux;
reg [7:0]A,B;
reg sel;
wire [7:0]Y;
bus_mux uut(.A(A), .B(B), .sel(sel),.Y(Y));
initial begin 
$dumpfile("mux_wave.vcd");
$dumpvars;
$monitor("    |Time=%t  | SEL=%b  | A=%b  |  B=%b  |  Y=%b|  ",$time,sel,A,B,Y);
sel=0; A=8'b01010011; B=8'b11001110;#10;
sel=1; A=8'b00000011; B=8'b11111110;#10;
sel=0; A=8'b01001011; B=8'b11001110;#10;
sel=1; A=8'b11000011; B=8'b11000100;#10;
sel=0; A=8'b01010011; B=8'b11011010;#10;
sel=1; A=8'b11110011; B=8'b11001110;#10;
#100; $finish;
end 
endmodule
