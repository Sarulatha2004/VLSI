module tb_full_sub;
reg a,b,c;
wire dif,bor;
Full_sub uut( .a(a), .b(b), .c(c), .dif(dif), .bor(bor));
initial begin
$dumpfile("Full_sub_wave.vcd");
$dumpvars(0, tb_full_sub);
$display(" a  b cin  | Difference  Borrow ");
$monitor(" %b %b %b  |  %b  %b  ",a,b,c,dif,bor);
a=0; b=0; c=0; #10;
a=0; b=0; c=1; #10;
a=0; b=1; c=0; #10;
a=0; b=1; c=1; #10;
a=1; b=0; c=0; #10;
a=1; b=0; c=1; #10;
a=1; b=1; c=0; #10;
a=1; b=1; c=1; #10;
$finish;
end 
endmodule
