module demux1_16_tb;
  reg din;
  reg [3:0]s;
  wire[15:0]y;
  demux1_16 dut(.*);
  initial begin
    $dumpfile("demux1_16.vcd");
    $dumpvars(1,demux1_16_tb);
    $monitor("$time=0%t din=%b s=%b y=%b",$time,din,s,y);
    din=1;
       s= 4'b0000; #10;
       s= 4'b0001; #10;
       s= 4'b0010; #10;
       s= 4'b0011; #10;
       s= 4'b0100; #10;
       s= 4'b0101; #10;
       s= 4'b0110; #10;
       s= 4'b0111; #10;
       s= 4'b1000; #10;
       s= 4'b1001; #10;
       s= 4'b1010; #10;
       s= 4'b1011; #10;
       s= 4'b1100; #10;
       s= 4'b1101; #10;
       s= 4'b1110; #10;
       s= 4'b1111; #10;
    $finish;
  end 
endmodule
    
