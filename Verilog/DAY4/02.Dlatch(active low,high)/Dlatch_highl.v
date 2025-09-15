
module Dlatch(d,en,q,qbar);
input d,en;
output reg q;
output wire qbar;
always @(*) begin
if(en)
q<=d;
end
assign qbar=~q;
endmodule
