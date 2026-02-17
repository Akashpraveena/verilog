module asdff_tb;
  reg clk;
  reg d;
  reg rst;
  wire q;
  asdff dut(.*);
  initial begin
    clk=0;
  end
  always #2 clk=~clk;
  initial begin
    clk=1;
    d=0;d=1;
    rst=0;#10
    rst=1;
    #10 $finish;
  end
     initial begin 
    $dumpfile("asdff.vcd");
    $dumpvars(1,asdff_tb);
    $monitor("$time=0%t clk=%b d=%b rst=%b q=%b",$time,clk,d,rst,q);
     end
endmodule
    
    
