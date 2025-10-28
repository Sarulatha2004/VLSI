module armstrong_tb;

reg [9:0]num;
wire isarm;

armstrong uut (.num(num), .isarm(isarm));

initial begin
	
	$monitor("num=%d | isarm=%b",num,isarm);
	num=153;#10
	num=151;#10
	$finish;
end
always @(isarm )begin
	if(isarm)
		$display(" %d is an armstrong number",num);
	else
		$display(" %d is not an armstrong number",num);
end
endmodule

