module memory;
reg [13:0]mem[7:0];

integer i;
reg [17:0]sum;
reg [13:0]largest;

task mem_elements;
integer j;
begin
for(j=0;j<8;j++)
begin
  mem[j]=j*10+5;
  $display("mem[%d]=%d",j,mem[j]);
end
end
endtask
task sum_memory;
integer k;
begin
sum=0;
 for(k=0;k<8;k++)
 begin
   sum=sum+mem[k];
 end
end
endtask

task large_ele;
integer l;
begin
largest=mem[0];
for(l=0;l<8;l++)
begin
if(mem[l]>largest)
  largest=mem[l];
end
end
endtask
initial begin

mem_elements();
sum_memory();
$display("Sum of all elements=%d",sum);
large_ele();
$display("Largest element of the memory=%d",largest);
end
endmodule
