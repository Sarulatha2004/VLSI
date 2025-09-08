module tb_equal;
reg [3:0]a,b;
wire eq1,eq2;
equal uut(.a(a), .b(b), .eq1(eq1), .eq2(eq2));
initial begin
$dumpfile("equal_wave.vcd");
$dumpvars(0,tb_equal);
$monitor(" a=%b   b=%b  |  eq1=%b  eq2=%b", a,b,eq1,eq2);
a=4'bx10z; b=4'bx10z;#10;
a=4'bx101; b=4'bx101;#10;
a=4'b1010; b=4'b1010;#10;
a=4'b1010; b=4'b1011;#10;
$finish;
end 
endmodule
