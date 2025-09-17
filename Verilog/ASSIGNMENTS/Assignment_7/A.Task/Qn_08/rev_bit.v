module rev_bit;
reg [7:0]in;
reg [7:0]rev_in;
task task_rev(input [7:0]in,output [7:0]rev_in);
integer i;
begin
for(i=0;i<8;i++)
rev_in[7-i]=in[i];
end 
endtask

initial begin
$monitor("Time=%t | in=%b  | Reversed=%b", $time, in,rev_in);
in=8'd15;
task_rev(in,rev_in);#10
in=8'd25;                                                                                                                                                   task_rev(in,rev_in);#10;
in=8'd200;                                                                                                                                                  task_rev(in,rev_in);#10
in=8'd108;                                                                                                                                                  task_rev(in,rev_in);#10;
in=8'd247;                                                                                                                                                  task_rev(in,rev_in);#10;
#100; $finish;
end
endmodule

