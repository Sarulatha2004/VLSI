module comp_1bit(a,b,eq,gt,lt);
input a,b;
output reg eq,lt,gt;
always @ (*) begin
if(a==b)begin
  eq=1'b1;
  gt=1'b0;
  lt=1'b0;
  end
  else if(a>b) begin
  eq=1'b0;
  gt=1'b1;
  lt=1'b0;
  end
else begin
  eq=1'b0;
  gt=1'b0;
  lt=1'b1;
  end
end
endmodule

