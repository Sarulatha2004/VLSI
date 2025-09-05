module bit_sel;
reg [7:0]data;
initial begin
data=8'b10010010;
$display("time=%0t : data=%b : data[3]=%b",$time,data,data[3]);#10;
data[3]=1'b1;
$display("time=%0t  :  data=%b",$time,data);#10;
$finish;
end
endmodule
