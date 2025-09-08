module tb_4bit_2comp;
reg [3:0]x,y;
reg cin;
wire [3:0]sum;
wire cout;

twocomp_4bit uut(.x(x), .y(y), .cin(cin), .sum(sum), .cout(cout));
initial begin
	$dumpfile("twocomp_wave.vcd");
	$dumpvars(0, tb_4bit_2comp);
	$display(" x     y    cin   |  sum      cout");
	$monitor(" %b     %b      %b   |    %b    %b  ",x,y,cin,sum,cout);
	x=4'b1001; y=4'b0010; cin=1'b0;#10;
	x=4'b1101; y=4'b0011; cin=1'b1;#10;
	x=4'b1011; y=4'b1010; cin=1'b0;#10;
	x=4'b1111; y=4'b0110; cin=1'b1;#10;
	x=4'b1011; y=4'b1010; cin=1'b0;#10;
	$finish;
end
endmodule
