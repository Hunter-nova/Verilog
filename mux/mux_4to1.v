module mux_4to1(a0,a1,a2,a3,s1,s0,y);
input wire a0,a1,a2,a3,s1,s0;
output y;
assign y = (a0 & ~s0 & ~s1) | (a1 & ~s0 & s1) | (a2 & s0 & ~s1 ) | (a3 & s0 & s1);
endmodule 
