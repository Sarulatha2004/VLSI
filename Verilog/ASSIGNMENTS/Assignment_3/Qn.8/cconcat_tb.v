module tb_concat;
reg a;
reg [1:0]b,c;
wire [2:0]y;
concat uut(.a(a), .b(b), .c(c), .y(y));
initial begin
	$dumpfile(" concat_wave.vcd");
	$dumpvars(0, tb_concat);
	$monitor(" a=%b  b=%b  c=%b  | y=%b",a,b,c,y);
	a=1; b=2'b01; c=2'b10;#10;
	a=0; b=2'b11; c=2'b01;#10;
	a=1; b=2'b10; c=2'b01;#10;
	a=0; b=2'b00; c=2'b11;#10;
	a=1; b=2'b01; c=2'b10;#10;
	$finish;
end 
endmodule

