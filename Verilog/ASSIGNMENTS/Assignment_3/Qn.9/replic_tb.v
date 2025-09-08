module tb_replic;
reg a;
reg [1:0]b,c;
wire [5:0]y;
replic uut(.a(a), .b(b), .c(c), .y(y));
initial begin
        $dumpfile(" replic_wave.vcd");
        $dumpvars(0, tb_replic);
        $monitor(" a=%b  b=%b  c=%b  | y=%b",a,b,c,y);
        a=1; b=2'b01; c=2'b10;#10;
        a=0; b=2'b11; c=2'b01;#10;
        a=1; b=2'b10; c=2'b01;#10;
        a=0; b=2'b00; c=2'b11;#10;
        a=1; b=2'b01; c=2'b10;#10;
        $finish;
end
endmodule

