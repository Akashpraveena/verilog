module sub_4bit_tb;
  reg[3:0]a;
  reg[3:0]b;
  wire[3:0]difference;
  sub_4bit dut(.*);
  initial begin
    $dumpfile("sub_4bit.vcd");
    $dumpvars(1,sub_4bit_tb);
    $monitor("$time=0%t a=%b b=%b difference=%b ",$time,a,b,difference);
    a=4'd5;b=4'd4;#10
    a=4'd7;b=4'd1;#10
    a=4'd11;b=4'd15;#10
    a=4'd2;b=4'd4;#10
    $finish;
  end
endmodule
    
  
