module tb_gate_mux;
reg a,b;
wire and_g,or_g,nand_g,nor_g,xor_g,xnor_g;
gate_mux uut(.a(a), .b(b),  .and_g(and_g),.or_g(or_g),.nand_g(nand_g),.nor_g(nor_g),.xor_g(xor_g),.xnor_g(xnor_g));
initial begin
$dumpfile("gate.vcd");
$dumpvars(0, tb_gate_mux);
$display(" a   b  |   and_g or_g nand_g nor_g xor_g xnor_g");
$monitor(" %b  %b |     %b    %b     %b       %b      %b        %b  ",a,b, and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end 
endmodule
