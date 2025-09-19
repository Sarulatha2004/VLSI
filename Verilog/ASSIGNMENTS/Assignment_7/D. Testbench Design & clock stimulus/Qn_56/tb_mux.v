module tb_mux2to1;
reg i0,i1,s;
wire y;
Mux2to1 uut( .i0(i0), .i1(i1), .s(s), .y(y));
initial begin
	$dumpfile("mux_wave.vcd");
	$dumpvars(0, tb_mux2to1);
        $display("s | i0  i1 | y");
        $monitor(" %b | %b  %b | %b",s,i0,i1,y);
	s=0; i0=0; i1=1; #10;
	s=1; i0=1; i1=0; #10;
	s=0; i0=1; i1=1; #10;
	s=1; i0=1; i1=1; #10;
       $finish;
end 
endmodule
