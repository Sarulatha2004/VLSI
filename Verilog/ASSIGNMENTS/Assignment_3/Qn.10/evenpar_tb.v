module tb_evenpar;
reg [8:0]x;
wire ep,op;
evenpar uut(.x(x), .ep(ep), .op(op));
initial begin
$dumpfile("evenpar_wave.vcd");
$dumpvars(0, tb_evenpar);
$monitor(" x=%b |  ep=%b   op=%b",x,ep,op);
x=9'b010101010;#10;
x=9'b111000110;#10;
x=9'b011001010;#10;
x=9'b011000111;#10;
$finish;
end 
endmodule
