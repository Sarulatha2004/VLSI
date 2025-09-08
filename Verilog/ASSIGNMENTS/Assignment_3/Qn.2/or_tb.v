module tb_or;
reg a,b;
wire out;
or_gate uut(.a(a), .b(b), .out(out));
initial begin
$dumpfile("or_wave.vcd");
$dumpvars(0, tb_or);
$display("  A    B   |   out");
$monitor("   %b    %b   |   %b",a,b,out);
a=0; b=0;#10;
a=0; b=1;#10;
a=1; b=0;#10;
a=1; b=1;#10;
$finish;
end
endmodule
