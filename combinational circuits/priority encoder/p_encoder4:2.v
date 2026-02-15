module p_encoder(input[3:0]d,output y0,y1);
  assign y0=d[2]|d[3];
  assign y1=d[3]|d[1]& ~d[2];
endmodule
