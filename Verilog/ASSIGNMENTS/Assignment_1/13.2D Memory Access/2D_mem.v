module memory_2D;
reg[7:0]mem[3:0][3:0];
integer i,j;
initial begin
for(i=0;i<4;i++)
begin
for(j=0;j<4;j++)
begin
mem[i][j]=(i*4+j);
end
end
$display("-------2D memory-------");
for(i=0;i<4;i++)
begin
for(j=0;j<4;j++)
begin
$write("%d\t",mem[i][j]);
end
$write("\n");
end
$display("------ACCESS SPECIFIC ELEMENT-------");
$display("mem[3][2]=%d(dec),%b(binary),%h(hex)",mem[3][2],mem[3][2],mem[3][2]);
end
endmodule
