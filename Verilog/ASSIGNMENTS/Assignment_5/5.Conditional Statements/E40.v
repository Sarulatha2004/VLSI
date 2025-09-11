module flag_logic(f1,f2,f3,out);
input f1, f2, f3;
output reg out;
  always @(*) begin
    if (f1)
      out = 1'b1;
    else if (f2)
      out = 1'b0;
    else if (f3)
      out = ~out;  
    else
      out = 1'bz;  
  end
endmodule

