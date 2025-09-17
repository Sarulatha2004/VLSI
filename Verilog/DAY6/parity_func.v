module parity_func;
reg [7:0]num;
reg parity;

function parity_type(input [7:0]n);
integer i;
begin
parity_type=0;
for(i=0;i<=7;i++)
begin
   parity_type=parity_type^n[i];
end
end
endfunction

initial begin
$monitor("Time=%t | NUM=%b  | parity=%b",$time,num,parity);num=8'd23;
parity=parity_type(num);
#10;num=8'd34;
parity=parity_type(num);
#10;num=8'd45;
parity=parity_type(num);
#10;num=8'd23;
parity=parity_type(num);
#10;num=8'd31;
parity=parity_type(num);
#10;num=8'd24;
parity=parity_type(num);
#10;num=8'd67;
parity=parity_type(num);
#10;num=8'd57;
parity=parity_type(num);
#10;num=8'd32;
#100; $finish;
end 
endmodule

