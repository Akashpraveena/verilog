module demux1_8(input din,input [2:0]s , output reg[7:0]y);
  always@(*) begin
    y[0]=0; y[1]=0; y[2]=0; y[3]=0; y[4]=0; 
    y[5]=0; y[6]=0; y[7]=0;
     case(s)
       3'b000 : y[0] = din;
       3'b001 : y[1] = din;
       3'b010 : y[2] = din;
       3'b011 : y[3] = din;
       3'b100 : y[4] = din;
       3'b101 : y[5] = din;
       3'b110 : y[6] = din;
       3'b111 : y[7] = din;
   endcase
  end 
endmodule
      
