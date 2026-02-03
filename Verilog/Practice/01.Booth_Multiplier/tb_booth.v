module tb;
reg signed [3:0]A;
reg signed [3:0]B;
reg clk;
reg start;
wire signed [7:0]res;
wire done;

booth_multi dut(.A(A),
	.B(B),
	.clk(clk),
	.res(res),
	.start(start),
	.done(done)
);

always #5 clk=~clk;

initial begin

	$dumpfile("booth.vcd");
	$dumpvars;
        

	$monitor("Time=%0t clk=%0b ; start=%0b ; A=%0b(%0d) ; B=%0b(%0d) ; res=%0b(%0d),done=%0b",$time,clk,start,A,A,B,B,res,res,done);
	clk=0;

	A=4'b0101;
	B=4'b1010;
	start=1;
	#10;
	start=0;
	#100;

	A=4'b1101;
        B=4'b1110;
	start=1;
        #10;
        start=0;
        #100;


        A=4'b1001;
        B=4'b1111;
	start=1;
        #10;
        start=0;
        #100;


        A=4'b1101;
        B=4'b1001;
	start=1;
        #10;
        start=0;
        #100;
	#100;
	$finish;
end
endmodule


