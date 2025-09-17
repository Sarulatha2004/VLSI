module swap_reg;
reg [3:0]A,B;

task swap_task(inout [3:0]A, inout [3:0]B);
reg [3:0]temp;
begin
    temp=A;
    A=B;
    B=temp;

end
endtask

initial begin
$monitor("Time=%t | AFTER SWAPPING >>>>A=%b(%d)  | B=%b(%d) " ,$time,A,A,B,B);
A=4'd6; B=4'd9;
$display("Time=%t |BEFORE SWAPPING >>>>A=%b(%d)  | B=%b(%d) " ,$time,A,A,B,B);
swap_task(A,B);
#10;A=4'd7; B=4'd4;
$display("/t");
$display("Time=%t |BEFORE SWAPPING >>>>A=%b(%d)  | B=%b(%d) " ,$time,A,A,B,B);
swap_task(A,B);
#10;A=4'd5; B=4'd2;
$display("/t");
$display("Time=%t |BEFORE SWAPPING >>>>A=%b(%d)  | B=%b(%d) " ,$time,A,A,B,B);
swap_task(A,B);
#10;A=4'd3; B=4'd8;
$display("/t");
$display("Time=%t |BEFORE SWAPPING >>>>A=%b(%d)  | B=%b(%d) " ,$time,A,A,B,B);
swap_task(A,B);
#100; $finish;
end 
endmodule
