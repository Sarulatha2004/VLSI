module pattern;
reg [3:0]n;
integer i,j;

always @(*) begin
for(i=1;i<=n;i++)
begin
  for(j=1;j<=n-i;j++)
   begin
    $write("\t");
   end
   for(j=1;j<=i;j++)
   begin
    $write("%d\t",i);
   end
   $write("\n\n");
end
for(i=n-1;i>=1;i--)
begin
   for (j=1;j<=n-i;j++)
   begin
	   $write("\t");
   end
   for(j=1;j<=i;j++)
   begin
	   $write("%d\t",i);
   end
   $write("\n\n");
   end
end
initial begin
	#10; n=5;
	#100;
	$finish;
end
endmodule


