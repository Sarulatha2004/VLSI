module count_ones;
reg [3:0]data;
integer i,count;
always @ (data)begin
  count=0;
for(i=0;i<4;i++)begin
 if(data[i]==1) begin
  count=count+1;
end
end
end
initial begin
$monitor("Time=%t  | data=%b | Count=%d",$time,data,count);
data=4'b1111;#10
data=4'b1110;#10
data=4'b1100;#10
data=4'b1000;#10
#100 $finish;
end
endmodule
