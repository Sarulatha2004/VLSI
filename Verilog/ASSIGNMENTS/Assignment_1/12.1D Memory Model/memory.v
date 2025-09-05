module mem_model;
reg[7:0]mem[7:0];
integer i;
initial begin
mem[0]=8'hA;
mem[1]=8'hB;
mem[2]=8'b10100101;
mem[3]=8'd99;
for(i=0;i<8;i++)
begin
$display("mem[%d]=%h(Hex) : mem[%d]=%b(bin)  : mem[%d]=%d(dec)",i,mem[i],i,mem[i],i,mem[i]);
end
$finish;
end 
endmodule

