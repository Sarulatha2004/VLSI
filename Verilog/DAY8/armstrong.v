module armstrong(
input [9:0]num,
output reg isarm
);

integer n,rem,org,res;

always @(*)
begin
        n=0;
	rem=0;
	res=0;
	org=num;
	while(org!=0)begin
		org= org/10;
		n=n+1;
	end

	org=num;
	while(org!=0)begin
		rem = org % 10;
		res = res + (rem ** n);
		org = org/10;
	end

	if(num == res)
		isarm=1;
	else
		isarm=0;
end
endmodule

