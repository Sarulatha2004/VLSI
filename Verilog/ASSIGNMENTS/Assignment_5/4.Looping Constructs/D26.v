module count_repeat;
reg [4:0]count;
initial begin
count=0;
repeat(7) begin
 #5 count++;
end
end
initial begin
$monitor("Time=%t  | count=%d", $time, count);
#50 $finish;
end
endmodule
