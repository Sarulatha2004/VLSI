module multiplication;
reg [3:0]A,B;
reg [7:0]mul_out;

task multi(input [3:0]A, input [3:0]B, output [7:0]mul_out);
begin
mul_out=A*B;
end
endtask

initial begin
$monitor("Time=%t |  A=%d  | B=%d | Mul=%d",$time,A,B,mul_out);
A=4'd12; B=4'd13;
multi(A,B,mul_out);#10;
A=4'd11; B=4'd15;
multi(A,B,mul_out);#10;
A=4'd15; B=4'd15;
multi(A,B,mul_out);#10;
A=4'd14; B=4'd13;
multi(A,B,mul_out);#10;
#100;
$finish;
end 
endmodule

