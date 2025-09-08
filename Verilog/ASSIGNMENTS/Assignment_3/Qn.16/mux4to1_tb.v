module tb_mux4to1;
reg i0,i1,i2,i3,s1,s0;
wire y;
mux4to1 uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .s1(s1), .s0(s0), .y(y));
initial begin
$dumpfile("mux_wave.vcd");
$dumpvars(0,tb_mux4to1);
$monitor("i0=%b; i1=%b; i2=%b; i3=%b; s1=%b;  s0=%b | y=%b ",i0,i1,i2,i3,s1,s0,y); 
i0=1; i1=1; i2=0; i3=1; s1=1; s0=1; #10;
i0=1; i1=0; i2=0; i3=1; s1=1; s0=0; #10;
i0=0; i1=1; i2=0; i3=1; s1=0; s0=1; #10;
i0=1; i1=1; i2=1; i3=1; s1=0; s0=0; #10;
$finish;
end 
endmodule
