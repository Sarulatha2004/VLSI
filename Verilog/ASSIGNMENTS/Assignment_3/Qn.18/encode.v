module encode(E0,E1,E2,E3,Y0,Y1);
input E0,E1,E2,E3;
output Y0,Y1;
assign Y1=(E3)?1'b1:(E2)?1'b1:1'b0;
assign Y0=(E3)?1'b1:(E1)?1'b1:1'b0;
endmodule
