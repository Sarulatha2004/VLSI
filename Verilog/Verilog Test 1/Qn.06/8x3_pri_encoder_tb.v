module pri_en_tb;
reg [7:0]d;
wire [2:0]y;

pri_encoder uut(.d(d), .y(y));
initial begin
$dumpfile("pri_en.vcd");
$dumpvars;
$monitor("Time=%t | d=%b | y=%b",$time,d,y);

#10 d=45;
#10 d=234;
#10 d=212;
#10 d=154;
#10 d=200;
#10 d=126;
#10 d=0;
#100
$finish;
end
endmodule
