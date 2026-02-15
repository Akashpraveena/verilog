module p_encoder_tb;
  reg[3:0]d;
  wire y0,y1;
  p_encoder dut(.*);
  initial begin
    $dumpfile("p_encoder.vcd");
    $dumpvars(1,p_encoder_tb);
    $monitor("$time=0%t d=%b y0=%b y1=%b",$time,d,y0,y1);
    d= 4'b0001;#10
    d= 4'b001x;#10
    d= 4'b01xx;#10
    d= 4'b1xxx;#10
    $finish;
  end 
endmodule
    
