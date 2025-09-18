module count_ones;
reg [7:0]data;
reg [3:0]count;

function [3:0]count_one(input [7:0]A);
integer i;
begin
count_one=0;
for(i=0;i<8;i++)
begin
if(A[i]==1)
 count_one=count_one+1;
end
end
endfunction
initial begin
$monitor("Time=%t  | data=%b | count=%d",$time,data,count);
data=8'd39;
count=count_one(data);
#10 data=8'd34;
count=count_one(data);
#10 data=8'd45;
count=count_one(data);
#10 data=8'd23;
count=count_one(data);
#10 data=8'd31;
count=count_one(data);
#10 data=8'd65;
count=count_one(data);
#10 data=8'd37;
count=count_one(data);
#100;
$finish;
end 
endmodule
