module shift_right;
reg [7:0]in;
reg [2:0]s;
wire [7:0]out;

function [7:0]shift_r(input [7:0]in, input [2:0]s);
 begin
   shift_r=in>>s;
 end
endfunction
assign out=shift_r(in,s);

initial begin

$monitor("Time=%t | in=%b |s=%d|out=%b",$time,in,s,out);
in=8'd250;s=3'd6;#10;
in=8'd235;s=3'd4;#10;
in=8'd121;s=3'd3;#10;
in=8'd15;s=3'd5;#10;
in=8'd64;s=3'd2;#10;
end
endmodule
