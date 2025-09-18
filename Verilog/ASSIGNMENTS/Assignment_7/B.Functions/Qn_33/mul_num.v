module multiplication;
reg [3:0]A,B;
reg [7:0]mul_out;

function [7:0]multi(input [3:0]A, input [3:0]B);
integer i;
begin
	multi=0;
 for(i=1;i<=A;i++)
  begin
    multi=multi+B;
  end
end
endfunction

initial begin
$monitor("Time=%t |  A=%d  | B=%d | Mul=%d",$time,A,B,mul_out);
A=4'd12; B=4'd13;
mul_out=multi(A,B);#10;
A=4'd11; B=4'd15;
mul_out=multi(A,B);#10;
A=4'd15; B=4'd15;
mul_out=multi(A,B);#10;
A=4'd14; B=4'd13;
mul_out=multi(A,B);#10;
#100;
$finish;
end 
endmodule
