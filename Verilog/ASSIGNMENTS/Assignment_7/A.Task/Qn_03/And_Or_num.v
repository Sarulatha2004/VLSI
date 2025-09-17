module sub_num;
reg [7:0]A,B;
reg [7:0]AND_Out,OR_Out;

task Gate_task(input [7:0]A,input [7:0]B, output [7:0]and_out, output [7:0]or_out);
begin
 and_out=A&B;
 or_out=A|B;
end
endtask

initial begin

$monitor("Time=%t | A=%b | B=%b| AND_Out=%b | OR_out=%b" ,$time,A,B,AND_Out,OR_Out);
A=8'd74; B=8'd34;
Gate_task(A,B,AND_Out,OR_Out);
#10;A=8'd54; B=8'd12;
Gate_task(A,B,AND_Out,OR_Out);
#10;A=8'd31; B=8'd54;
Gate_task(A,B,AND_Out,OR_Out);
#10;A=8'd75; B=8'd44;
Gate_task(A,B,AND_Out,OR_Out);
#10;A=8'd24; B=8'd84;
Gate_task(A,B,AND_Out,OR_Out);
#100;
$finish;
end
endmodule
