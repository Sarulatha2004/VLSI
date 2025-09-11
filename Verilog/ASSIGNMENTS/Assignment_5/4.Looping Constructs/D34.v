module count_down;
integer count;
initial begin
count=10;
while(0<=count)
begin
 $display("count=%d ", count);
 count--;
 #10;
end
end
endmodule
