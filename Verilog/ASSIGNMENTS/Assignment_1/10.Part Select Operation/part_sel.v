module part_sel;
reg[7:0]bus;
reg[3:0]nibble;
initial begin
bus=8'b10101111;
$display("Time=%0t : bus=%b",$time,bus);
nibble=bus[3:0];
$display("Time=%0t : lower_nibble=%b",$time,nibble);
nibble=bus[7:4];
$display("Time=%0t : upper_nibble=%b",$time,nibble);
$finish;
end 
endmodule

