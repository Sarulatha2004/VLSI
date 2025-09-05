module wire_demo;
wire net1,net2;
assign net1=1'b1;
assign net2=net1;
initial begin
$display("time=%0t : net1=%b net2=%b", $time, net1, net2); #5 
$display("time=%0t : net1=%b net2=%b", $time, net1, net2);
$finish;
end
endmodule
