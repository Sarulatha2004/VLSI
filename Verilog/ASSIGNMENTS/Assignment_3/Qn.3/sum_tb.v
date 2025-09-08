module tb_sum;
reg a,b;
wire [1:0]sum;
sum_var uut (.a(a), .b(b), .sum(sum));
initial begin
$dumpfile("sum_wave.vcd");
$dumpvars(0, tb_sum);
$display("    a    b   |   sum");
$monitor("  %b    %b    | %b " ,a,b,sum);
a=0; b=0;#10;
a=0; b=1;#10;
a=1; b=0;#10;
a=1; b=1;#10;
$finish;
end
endmodule

