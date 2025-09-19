module print_sum;
reg [3:0]a,b;
wire [4:0]y;

assign  y=a+b;

initial begin
a=4'd12; b=4'd15;#10;
$display("Time=%t | A=%d | B=%d |Y=%d",$time,a,b,y);
#100;
end
endmodule
