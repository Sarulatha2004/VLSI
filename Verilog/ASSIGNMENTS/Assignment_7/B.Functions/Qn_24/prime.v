module prime;
  reg [7:0] num;
  reg is_prime;

  function prime_num(input integer n);
    integer i;
    begin
      if (n < 2) 
        prime_num = 0;   
      else begin:check_loop
        prime_num = 1;    
        for (i = 2; i <= n/2; i = i + 1) begin
          if (n % i == 0) begin
            prime_num = 0;  
            disable check_loop;   
          end
        end
      end
    end
  endfunction

  initial begin
    $monitor("Time=%0t | num=%0d | is_prime=%b", $time, num, is_prime);

    num = 0;  is_prime = prime_num(num); #10;
    num = 1;  is_prime = prime_num(num); #10;
    num = 2;  is_prime = prime_num(num); #10;
    num = 3;  is_prime = prime_num(num); #10;
    num = 4;  is_prime = prime_num(num); #10;
    num = 7;  is_prime = prime_num(num); #10;
    num = 9;  is_prime = prime_num(num); #10;
    num = 11; is_prime = prime_num(num); #10;
    num = 15; is_prime = prime_num(num); #10;

    #50 $finish;
  end
endmodule

