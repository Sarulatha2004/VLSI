module square_num;
reg [7:0]in;
reg [15:0]out;

task square(input [7:0]A, output [15:0]O);
begin
 O=A*A;
end
endtask

initial begin

$monitor("Time=%t | IN=%b(%d) | Square of %d = %b(%d)",$time,in,in,in,out,out);
in=8'd5;
square(in,out);
#10;in=8'd16;
square(in,out);
#10;in=8'd34;
square(in,out);
#10;in=8'd5;
square(in,out);
#10;in=8'd125;
square(in,out);
#10;in=8'd25;
square(in,out);
#10;in=8'd15;
square(in,out);
#10;in=8'd255;
square(in,out);
#100
$finish;
end 
endmodule
