module maxi;
reg [7:0]A[0:3];
reg [7:0]max;

task task_max(input [7:0]A0,input [7:0]A1,input [7:0]A2,input [7:0]A3, output [7:0]max);

integer i;
begin
max=A0;
  if(max<A1)
    max=A1;
  if(max<A2)
    max=A2;
  if(max<A3)
    max=A3;
end
endtask

initial begin
$monitor("Time=%t | in1=%d | in2=%d | in3=%d | in4=%d |maximum=%d",$time,A[0],A[1],A[2],A[3],max);
A[0]=12;A[1]=43;A[2]=17;A[3]=10; task_max(A[0],A[1],A[2],A[3],max);#10
A[0]=12;A[1]=28;A[2]=19;A[3]=23; task_max(A[0],A[1],A[2],A[3],max);#10
A[0]=12;A[1]=10;A[2]=24;A[3]=97; task_max(A[0],A[1],A[2],A[3],max);#10
A[0]=12;A[1]=43;A[2]=76;A[3]=45; task_max(A[0],A[1],A[2],A[3],max);#10
#100
$finish;
end
endmodule
