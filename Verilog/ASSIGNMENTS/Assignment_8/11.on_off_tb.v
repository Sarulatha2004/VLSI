module tb_on_off;
reg clk,rst,j,k;
wire out;

on_off uut (.clk(clk), .rst(rst), .j(j), .k(k), .out(out));

initial clk=0;
always #5 clk=~clk;

initial begin
	$monitor("Time = %t  | rst=%b | clk=%b | j=%b | k=%b | out=%b" ,$time,rst,clk,j,k,out);
       j=0;k=0;rst=1;
       #10;
       rst=0;#10
       j=1;#10;
       k=1;#10;
       j=0;#10;
       k=0;#10;
     $finish;
end 
endmodule
