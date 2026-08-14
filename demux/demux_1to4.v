module demux_1to4(d, a0, a1, a2, a3, s0, s1);

input  d;
input  s0,s1;
output a0,a1,a2,a3;

wire  w0,w1;

not (w0,s0);
not (w1,s1);

and (a0,d,w0,w1);
and (a1,d,w0,s1);
and (a2,d,s0,w1);
and (a3,d,s0,s1);
endmodule
