module gate_mux(a,b,and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
input a,b;
output and_g,or_g,nand_g,nor_g,xor_g,xnor_g;
assign and_g=(((~a)&1'b0)|(a&b));
assign or_g=(((~a)&b)|(a&1'b1));
assign nor_g=(((~a)&(~b))|(a&1'b0));
assign nand_g=(((~a)&1'b1)|(a&(~b)));
assign xor_g=(((~a)&b)|(a&(~b)));
assign xnor_g=(((~a)&(~b))|(a&b));
endmodule
