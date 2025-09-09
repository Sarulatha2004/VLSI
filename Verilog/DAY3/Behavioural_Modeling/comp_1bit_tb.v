module tb_comp;
reg a,b;
wire eq,gt,lt;
comp_1bit uut(.a(a), .b(b), .eq(eq), .gt(gt), .lt(lt));
initial begin
	$dumpfile("comp_wave.vcd");
	$dumpvars(0, tb_comp);
	$monitor(" a=%b   b=%b  |  eq=%b  gt=%b  lt=%b ",a,b,eq,gt,lt);
	a=0; b=0;#10
	a=0; b=1; #10
        a=1; b=0; #10
	a=1; b=1; #10
$finish;
end
endmodule

