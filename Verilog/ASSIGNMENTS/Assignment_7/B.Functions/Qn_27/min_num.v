module minimun;
reg [7:0]A,B;
reg [7:0]min;

function [7:0]min_fn(input [7:0]A, input [7:0]B);
begin
   if(A>B)
      min_fn=B;
   else
      min_fn=A; 
end
endfunction
initial begin

$monitor("Time=%t |  A=%b(%d) | B=%b(%d)| min=%b(%d)",$time,A,A,B,B,min,min);
A=8'd24;B=8'd27;min=min_fn(A,B);#10;
A=8'd44;B=8'd97;min=min_fn(A,B);#10;
A=8'd84;B=8'd27;min=min_fn(A,B);#10;
A=8'd24;B=8'd27;min=min_fn(A,B);#10;
A=8'd74;B=8'd67;min=min_fn(A,B);#10;
A=8'd14;B=8'd17;min=min_fn(A,B);#10;
#100;
$finish;
end
endmodule
