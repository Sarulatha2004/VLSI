module duty_cyc_60(
input clk,
output reg clk_out,
input reset
);
reg [2:0]count;

always @(posedge clk or posedge reset)
begin
        if (reset)begin
        count <=0;
        clk_out <=0;
  end

else begin
	if(count ==4)
		count <=0;
	else
		count<= count+1;

  if(count <=2)begin
      clk_out <=1;
   end
  else
       clk_out <=0;
end
end
endmodule
