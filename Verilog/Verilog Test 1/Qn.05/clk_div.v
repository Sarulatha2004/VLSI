module clk_divider(
input wire clk_50mhz,
input wire rst,
output reg clk_100hz);

reg [17:0]count;

always @ (posedge clk_50mhz or posedge rst)
begin
if(rst)
begin
   count <= 0;
   clk_100hz<=0;
end
else begin
if(count == 20'd249999)
begin
   count <=0;
   clk_100hz<=~clk_100hz;
end
else 
begin
   count<=count+1;
end
end
end

endmodule

