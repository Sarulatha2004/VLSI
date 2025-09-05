module manipulate_part_sel;
reg [7:0]bus;
reg [7:0]busA;
initial begin
bus=8'b01010101;
busA=8'b00000000;
for(integer i=0;i<=7;i++)
begin
busA[i]=bus[i];
end
$display("time=%0t : busA=%b ",$time,busA);
busA[3:0]=bus[3:0];
$display("time=%0t : busA=%b ",$time,busA);
$finish;
end
endmodule
