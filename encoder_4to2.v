module encoder_2to4(d3,d2,d1,d0,y0,y1);
input d3,d2,d1,d0;
output y0,y1;
assign y0 = d1|d3;
assign y1 = d2|d3;
endmodule  
