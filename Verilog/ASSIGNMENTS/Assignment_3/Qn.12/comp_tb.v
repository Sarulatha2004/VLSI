module tb_comp;
reg [3:0]x,y;
wire ceq,cgt,clt;
comp uut(.x(x), .y(y), .ceq(ceq), .cgt(cgt), .clt(clt));
initial begin
$dumpfile("comp_wave.vcd");
$dumpvars(0, tb_comp);
$monitor(" x=%b  y=%b  | ceq=%b  cgt=%b  clt=%b",x,y,ceq,cgt,clt);
x=4'b1111; y=4'b1111; #10;
x=4'b0101; y=4'b1100; #10;
x=4'b1110; y=4'b0001; #10;
$finish;
end
endmodule

