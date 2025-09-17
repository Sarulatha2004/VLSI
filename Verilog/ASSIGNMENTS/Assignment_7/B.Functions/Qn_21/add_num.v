module add_num;
reg [7:0]A,B;
reg [8:0]Sum;
 
function [8:0] add(input [7:0]A,input [7:0]B);
begin
add=A+B;
end
endfunction

initial begin
$monitor("Time=%t | A=%b(%d) | B=%b(%d) | Sum=%b(%d)",$time,A,A,B,B,Sum,Sum);
A=8'd12;B=8'd14;
Sum=add(A,B);#10;
A=8'd11;B=8'd13;
Sum=add(A,B);#10;
A=8'd9;B=8'd8;
Sum=add(A,B);#10;
A=8'd11;B=8'd12;
Sum=add(A,B);#10;
#100;
$finish;
end
endmodule
