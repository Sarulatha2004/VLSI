module bufif_tb;
reg in,ctrl;
wire out;
buffer uut(.in(in), .ctrl(ctrl), .out(out));
initial begin
        $dumpfile("buf.vcd");
        $dumpvars;
        $monitor("in=%b | ctrl=%b | out=%b ",in,ctrl,out);
        in=1;ctrl=1;#10
        in=1;ctrl=0;#10
        in=0;ctrl=1;#10
        in=1;ctrl=0;#10
        #10
        $finish;
end
endmodule
