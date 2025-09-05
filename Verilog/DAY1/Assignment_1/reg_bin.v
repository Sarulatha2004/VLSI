module reg_bin;
reg[7:0]data;
initial begin
$monitor("time=%0t : data=%b : data=%d",$time,data,data);
data=55;#10;
data=45;#10;
data=98;#10;
$finish;
end
endmodule
