module tb_all0all1;
reg [7:0]x;
wire one,zero;
all0all1 uut(.x(x), .zero(zero), .one(one));
initial begin
$dumpfile("all0all1_wave.vcd");
$dumpvars(0, tb_all0all1);
$monitor(" x=%b  | one=%b  zero=%b",x,one,zero);
x=8'b11111111;#10;
x=8'b00000000;#10;
x=8'b01010101;#10;
$finish;
end 
endmodule
