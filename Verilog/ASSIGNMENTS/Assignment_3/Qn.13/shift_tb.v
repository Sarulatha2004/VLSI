module tb_shift;
reg [3:0]a;
wire [3:0]l_sh,r_sh;
shift uut (.a(a), .l_sh(l_sh), .r_sh(r_sh));
initial begin

$dumpfile("shift_wave.vcd");
$dumpvars(0,tb_shift);
$monitor("a=%b | l_sh=%b   r_sh=%b",a,l_sh,r_sh);
a=4'b1010;#10;
a=4'b1101;#10;
a=4'b0001;#10;
a=4'b1110;#10;
a=4'b1101;#10;
$finish;
end 
endmodule
