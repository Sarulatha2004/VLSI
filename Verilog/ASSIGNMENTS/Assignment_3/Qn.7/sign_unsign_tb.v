module tb_sign_unsign;
reg signed [7:0]s1,s2;
reg [7:0]u1,u2;
wire [7:0]u_mod,u_div;
wire signed [7:0]s_mod,s_div;
sign_unsign uut(.s1(s1), .s2(s2), .u1(u1), .u2(u2), .s_mod(s_mod), .s_div(s_div), .u_mod(u_mod), .u_div(u_div));
initial begin
	$dumpfile("sign_unsign_wave.vcd");
	$dumpvars(0, tb_sign_unsign);
	$monitor(" u1=%d  u2=%d  =>  u_div=%d  u_mod=%d   |  s1=%d  s2=%d  =>  s_div=%d  s_mod=%d  ",u1,u2,u_div,u_mod,s1,s2,s_div,s_mod);
        u1=15; u2=8; s1=8; s2=2; #10;
        u1=10; u2=5; s1=12; s2=4; #10;
        u1=15; u2=11; s1=15; s2=3; #10;
        u1=15; u2=2; s1=6; s2=2; #10;	
	$finish;
end 
endmodule
