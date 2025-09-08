module tb_and;
reg A,B;
wire out;
and_gate uut(.A(A), .B(B), .out(out));
initial begin
$dumpfile("and_wave.vcd");
$dumpvars(0, tb_and);
$display("  A    B   |   out");
$monitor("   %b    %b   |   %b",A,B,out);
A=0; B=0;#10;
A=0; B=1;#10;
A=1; B=0;#10;
A=1; B=1;#10;
$finish;
end 
endmodule
