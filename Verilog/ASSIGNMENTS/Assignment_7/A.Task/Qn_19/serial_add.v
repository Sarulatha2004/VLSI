module serial_adder;
reg [3:0]A,B;
reg [4:0]out;
reg c;
integer i;

task serial_add(input [3:0]A, input [3:0]B,input c, output [4:0]out);
integer i;
begin
for(i=0;i<4; i++)
begin
 out[i]=A[i]^B[i]^c;
 c=(A[i]&B[i])|(A[i]&c)|(B[i]&c);
 out[4]=c;
end
end
endtask
initial begin
$monitor("Time=%t | A=%b(%d) | B=%b(%d) | c=%b | Out=%b(%d)", $time,A,A,B,B,c,out,out);
A=4'b1100; B=4'b0101; c=0; serial_add(A,B,c,out);#10
A=4'b1101; B=4'b1101; c=1; serial_add(A,B,c,out);#10
A=4'b1111; B=4'b0111; c=0; serial_add(A,B,c,out);#10
A=4'b0101; B=4'b1101; c=1; serial_add(A,B,c,out);#10
#100;
$finish;
end 
endmodule
