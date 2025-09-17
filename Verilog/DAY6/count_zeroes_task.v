module count_a_zero(data,out);
input  [15:0]data;
output reg [3:0]out;

always  @ (data)
count_zero(data,out);

task count_zero(input [15:0]data,  output [3:0]count);
integer i;
 begin
   count=0;
   for(i=0; i<=15;i++)
      if(data[i]==0)
         count=count+1;
 end
endtask
endmodule

