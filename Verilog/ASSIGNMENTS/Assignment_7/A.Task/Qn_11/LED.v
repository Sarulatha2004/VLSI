module LED;
reg led;

task blinking_led(input integer times,input integer delay);
integer i;
begin
for(i=1;i<times;i++)
begin
led=~led;
#delay;
end
end
endtask

initial begin
$monitor("Time=%t | led=%b |",$time,led);
$display("Testcase1");
led=0;blinking_led(10,10);
#100;
$finish;
end 
endmodule
