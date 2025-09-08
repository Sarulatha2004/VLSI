module equal(a,b,eq1,eq2);
input [3:0]a,b;
output eq1,eq2;
assign eq1 = (a==b);
assign eq2 = (a===b);
endmodule
