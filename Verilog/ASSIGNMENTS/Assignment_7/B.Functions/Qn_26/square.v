module square;
reg [3:0]num;
reg [8:0]res;

function [8:0]square_fn(input [3:0]num);
begin
  square_fn=num*num;
end
endfunction

initial begin
$monitor("Time=%t |  NUM=%d  | Square of NUM=%d",$time,num,res);
num=4'd15; res=square_fn(num); #10;
num=4'd14; res=square_fn(num); #10;
num=4'd13; res=square_fn(num); #10;
num=4'd12; res=square_fn(num); #10;
num=4'd11; res=square_fn(num); #10;
num=4'd10; res=square_fn(num); #10;
num=4'd9; res=square_fn(num); #10;
num=4'd8; res=square_fn(num); #10;
num=4'd7; res=square_fn(num); #10;
#100
$finish;
end
endmodule
