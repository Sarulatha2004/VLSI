module mux4to1;
reg [3:0]I0,I1,I2,I3;
reg [1:0]S;
reg [3:0]Y;

function [3:0]mux4x1(input [3:0]I0,I1,I2,I3, input [1:0]S);

begin

case(S)
 2'b00:mux4x1=I0;
 2'b01:mux4x1=I1;
 2'b10:mux4x1=I2;
 2'b11:mux4x1=I3;
endcase

end
endfunction

initial begin
$monitor("Time=%t | S=%b | I0=%b | I1=%b | I2=%b | I3=%b | Y=%b",$time,S,I0,I1,I2,I3,Y);
I0=14;I1=12;I2=3;I3=14;S=2;Y=mux4x1(I0,I1,I2,I3,S);#10;
I0=4;I1=13;I2=15;I3=10;S=3;Y=mux4x1(I0,I1,I2,I3,S);#10;
I0=5;I1=3;I2=12;I3=11;S=1;Y=mux4x1(I0,I1,I2,I3,S);#10;
#100;
$finish;
end
endmodule
