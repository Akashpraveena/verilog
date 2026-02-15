module decoder2_4_tb;
  reg d0, d1;
  wire y0,y1,y2,y3;
  decoder2_4 dut(.*);
  initial begin
    $dumpfile("decoder2_4.vcd");
    $dumpvars(1,decoder2_4_tb);
    $monitor("$time=0%t d0=%b d1=%b y0=%b y1=%b y2=%b y3=%b",$time,d0,d1,y0,y1,y2,y3);
  d0=0;d1=0;#10
  d0=0;d1=1;#10
  d0=1;d1=0;#10
  d0=1;d1=1;#10
  $finish;
  end
endmodule
  
