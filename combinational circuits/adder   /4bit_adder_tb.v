module add_4bit_tb;
  reg[3:0]a;
  reg[3:0]b;
  wire[3:0]sum;
  add_4bit dut(.*);
  initial begin
    $dumpfile("add_4bit.vcd");
    $dumpvars(1,add_4bit_tb);
    $monitor("$time=0%t a=%b b=%b sum=%b ",$time,a,b,sum);
    a=4'b0000;b=4'b0001;#10
    a=4'b0010;b=4'b0011;#10
    a=4'b0100;b=4'b0101;#10
    a=4'b0110;b=4'b0111;#10
    $finish;
  end
endmodule
    
  
