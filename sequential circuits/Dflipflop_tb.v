module dff_tb;
  reg clk;
  reg d;
  wire q;
  dff dut(.*);
    initial 
      clk=0;
  initial begin
    d=1;#10
    clk=1;d=0;#10
    clk=0;d=1;#10
    clk=1;d=0;#10
    $finish;
  end
  initial begin
    $monitor("$time=0%t clk=%b d=%b q=%b",$time,clk,d,q);
   
  end 
endmodule
