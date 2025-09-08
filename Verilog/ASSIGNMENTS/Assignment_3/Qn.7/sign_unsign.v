module sign_unsign(u1,u2,s1,s2,u_div,u_mod,s_div,s_mod);
input signed [7:0]s1,s2;
input [7:0]u1,u2;
output signed [7:0]s_mod,s_div;
output [7:0]u_mod,u_div;
assign u_mod=u1%u2;
assign u_div=u1/u2;
assign s_mod=s1%s2;
assign s_div=s1/s2;
endmodule
