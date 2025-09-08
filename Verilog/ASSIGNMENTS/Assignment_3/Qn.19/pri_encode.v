module encode(E0,E1,E2,E3,Y);
input E0,E1,E2,E3;
output [1:0]Y;
assign Y=(E3)?2'b11:(E2)?2'b10:(E1)?2'b01:2'b00;
endmodule            
