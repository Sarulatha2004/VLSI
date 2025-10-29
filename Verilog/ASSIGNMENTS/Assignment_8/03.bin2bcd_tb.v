module bin2bcd_tb;
reg [7:0]in;
reg clk,rst,start;
wire [11:0]bcd_out;
wire done;
bin2bcd uut (.in(in), .clk(clk), .rst(rst), .start(start), .bcd_out(bcd_out), .done(done));

always #5 clk= ~clk;

initial begin
	$monitor(" Time =%0t | in=%b(%d) | out=%b(%h) |done=%b ", $time, in,in, bcd_out,bcd_out,done);
           clk=0;
	   
	   in=8'b11111100;start =1'b0;
	   rst=1;
	   #10;
	   rst=0;
	   start=0;
	   #10;
	   start=1'b1;
	   #600;
	   $finish;
   end
   endmodule




