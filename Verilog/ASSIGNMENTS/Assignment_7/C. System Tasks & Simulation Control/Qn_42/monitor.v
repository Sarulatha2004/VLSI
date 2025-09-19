module monitor_data;
reg data,clk;

initial begin
clk=0;data=0;
$monitor("Time=%t | clk=%b  | data=%b ",$time, clk,data);
end 
always #5  clk=~clk;

initial begin
data=1;#5;
data=0;#5;
data=1;#5;
data=0;#5;
data=1;#5;
data=0;#5;
data=1;#5;
#30
$finish;
end 
endmodule
