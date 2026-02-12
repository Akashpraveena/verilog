module mux16_1_tb;
  reg [15:0]d;
  reg [3:0]s;
  wire y;
  mux16_1 dut(.*);
  integer i;
  initial begin
    $dumpfile("mux16_1.vcd");
    $dumpvars(1,mux16_1_tb);
      d=16'b1000000110011110;
    $monitor("$time=0%t d=%b s=%b y=%b",$time,d,s,y);
    for(i=0;i<16;i=i+1)begin
      s=i;
    #10;
  end
  $finish;
  end
endmodule

    
