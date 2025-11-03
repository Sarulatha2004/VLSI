module moore_tb;
reg clk,rst,x;
wire y;

moore_seq uut(.clk(clk), .rst(rst), .x(x), .y(y));
initial clk=0;
always #5 clk=~clk;
initial begin
        $dumpfile("moore.vcd");
        $dumpvars;
        $monitor("Time= %t | clk=%b | rst=%b | x=%b  | y=%b",$time,clk,rst,x,y);
        #5 rst=1;
        x=0;
        x=1;
        x=0;
        #5 rst=0;
        #10 x=1;
        #10 x=1;
        #10 x=1;
        #10 x=1;
        #10 x=0;
        #10 x=0;
        #10 x=0;
        #10 x=0;
        #10 x=1;
        #10 x=1;
        #10 x=0;
        #100;
        $finish;
end
endmodule
