module Equality;
reg [7:0]A,B;
integer Equality;

function equality_fn(input [7:0]A, input[7:0]B);
integer Equality;
begin
	Equality=0;
if(A==B)
 begin
 equality_fn=1;
 $display("A and B are Equal");
 end 
else
begin 
 equality_fn=0;
 $display("A and B are not Equal");
end
end
endfunction

initial begin

$monitor(" Time=%t | A=%d | B=%d| Equality=%d",$time,A,B,Equality);
A=8'd14;B=8'd14;Equality=equality_fn(A,B);#10;
A=8'd45;B=8'd14;Equality=equality_fn(A,B);#10;
A=8'd24;B=8'd24;Equality=equality_fn(A,B);#10;
A=8'd14;B=8'd54;Equality=equality_fn(A,B);#10;
A=8'd74;B=8'd74;Equality=equality_fn(A,B);#10;
#100;
$finish;
end 
endmodule
