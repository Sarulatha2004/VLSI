module bin_to_gray;
reg [3:0]Bin;
wire [3:0]Gray;

function [3:0]Bin2Gray(input [3:0]Bin);
integer i;
 begin
  Bin2Gray[3]=Bin[3];

  for(i=2; i>=0; i=i-1)
     Bin2Gray[i]=Bin2Gray[i+1]^Bin[i];
  end
endfunction
assign Gray=Bin2Gray(Bin);

initial begin
$monitor("Time=%t | Binary=%b | Gray=%b ", $time,Bin,Gray);
Bin=4'd14;#10;
Bin=4'd13;#10;
Bin=4'd12;#10;
Bin=4'd11;#10;
Bin=4'd10;#10;
Bin=4'd9;#10;
Bin=4'd8;#10;
Bin=4'd15;#10;
Bin=4'd7;#10;
#100;
end
endmodule 
