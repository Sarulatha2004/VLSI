module count_ones;
reg [7:0]data;
reg [3:0]count;

task count_one(input [7:0]A,output [3:0]out);
integer i;
begin
out=0;
for(i=0;i<8;i++)
begin
if(A[i]==1)
 out=out+1;
end
end
endtask
initial begin
$monitor("Time=%t  | data=%b | count=%d",$time,data,count);
data=8'd39;
count_one(data,count);
#10 data=8'd34;
count_one(data,count);
#10 data=8'd45;
count_one(data,count);
#10 data=8'd23;
count_one(data,count);
#10 data=8'd31;
count_one(data,count);
#10 data=8'd65;
count_one(data,count);
#10 data=8'd37;
count_one(data,count);
#100;
$finish;
end 
endmodule
