module Tlatch(t,en,res,q);
input t,en,res;
output reg q;
always @(en or t or res)begin
if(res)
q<=0;
else if(en) begin
if(t)
q<=~q;
end
end
endmodule
