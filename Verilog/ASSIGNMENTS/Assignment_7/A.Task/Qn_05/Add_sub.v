module add_sub_num;
reg [7:0]A,B;
reg [8:0]Add_Out;
reg signed [7:0]Sub_Out;

task add_sub_task(input [7:0]A,input [7:0]B, output [8:0]add_out,output [7:0]sub_out);
begin
 add_out=A+B;
 sub_out=A-B;
end 
endtask

initial begin

$monitor("Time=%t | A=%b(%d) | B=%b(%d)| Addition=%b(%d)  |  Subtraction=%b(%d)" ,$time,A,A,B,B,Add_Out,Add_Out,Sub_Out,Sub_Out);
A=8'd14; B=8'd34;
add_sub_task(A,B,Add_Out,Sub_Out);
#10;A=8'd34; B=8'd12;
add_sub_task(A,B,Add_Out,Sub_Out);
#10;A=8'd31; B=8'd54;
add_sub_task(A,B,Add_Out,Sub_Out);
#10;A=8'd25; B=8'd44;
add_sub_task(A,B,Add_Out,Sub_Out);
#10;A=8'd24; B=8'd84;
add_sub_task(A,B,Add_Out,Sub_Out);
#100;
$finish;
end 
endmodule
