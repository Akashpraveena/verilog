module full_subtractor_tb;
  reg a,b,cin ;
  wire difference,borrow ;
  full_subtractor dut (.*);
 initial begin
   $monitor("time=0%t a=%b b=%b cin=%b difference=%b borrow=%b",$time,a,b,cin,difference,borrow );
    a=0;b=0;cin=0; #10
    a=0;b=0;cin=1; #10
    a=0;b=1;cin=0; #10
    a=0;b=1;cin=1; #10
    a=1;b=0;cin=0; #10
    a=1;b=0;cin=1; #10
    a=1;b=1;cin=0; #10 
    a=1;b=1;cin=1; #10
   $finish;
 end 
endmodule
   
