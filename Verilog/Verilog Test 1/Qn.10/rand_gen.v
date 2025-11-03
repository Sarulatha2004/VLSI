module rand_gen;
reg signed[8:0] rand_num;
integer i;

initial begin

for(i=0;i<=10;i++)
begin
rand_num=($random%100);
$display(" %d ",rand_num);
end
end
endmodule
