module tb_tri_2to1mux;
reg a,b,s;
wire o;
tri_2to1_mux uut( .a(a), .b(b), .s(s), .o(o));
initial begin
	$dumpfile("tri_mux2to1.vcd");
	$dumpvars(0, tb_tri_2to1mux);
	$display("Time : s : a  b : o ");
	$monitor("%0t  : %b: %b %b : %b",$time,s,a,b,o);
	s=0; a=0; b=0;#10;
	s=0; a=0; b=1;#10;
	s=0; a=1; b=0;#10;
	s=0; a=1; b=1;#10;
        s=1; a=0; b=0;#10;
	s=1; a=0; b=1;#10;
	s=1; a=1; b=0;#10;
	s=1; a=1; b=1;#10;
$finish;
end
endmodule
