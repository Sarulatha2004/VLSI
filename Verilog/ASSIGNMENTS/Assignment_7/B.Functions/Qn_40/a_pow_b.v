module Power_of_num;
reg [3:0]A,B;
wire [63:0]out;

function [63:0]pow_a_of_b(input [3:0]A,B);
integer i;
begin
pow_a_of_b=1;
for(i=1;i<=B;i++)
  pow_a_of_b=pow_a_of_b*A;
end
endfunction
assign out=pow_a_of_b(A,B);

initial begin
$monitor("TIME=%t  |  A=%d  |B=%d | Result=%0d",$time,A,B,out);
A=4'd2;B=4'd4;#10;
A=4'd13;B=4'd11;#10;
A=4'd6;B=4'd2;#10;
A=4'd3;B=4'd4;#10;
A=4'd2;B=4'd2;#10;
A=4'd2;B=4'd15;#10;
A=4'd15;B=4'd15;#10;

end
endmodule
