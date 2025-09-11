module mux2x1(a,b,sel,y);
input a,b,sel;
output reg y;
always @(*) begin
if(sel)
 y=b;
else
 y=a;
end
endmodule

