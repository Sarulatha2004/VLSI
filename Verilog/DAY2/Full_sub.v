module Full_sub(a,b,c,dif,bor);
input a,b,c;
output dif,bor;
assign dif=a^b^c;
assign bor=((~(a^b))&c)|(~a&b);
endmodule
