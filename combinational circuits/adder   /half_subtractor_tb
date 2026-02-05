module half_subtractor_tb;
  reg a,b ;
  wire difference,borrow ;
  half_subtractor dut (.*);
 initial begin
   $monitor("time=0%t a=%b b=%b  difference=%b borrow=%b",$time,a,b,difference,borrow );
    a=0;b=0; #10
    a=0;b=1; #10
    a=1;b=1; #10
    a=1;b=0; #10
   $finish;
 end 
endmodule
   
      
