`timescale 1ns/1ps

module demux_1to4_tb;

reg d;
reg s0, s1;

wire a0, a1, a2, a3;

demux_1to4 uut (
    .d(d),
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .s0(s0),
    .s1(s1)
);

initial begin

    $dumpfile("demux_1to4.vcd");
    $dumpvars(0, demux_1to4_tb);

    d = 1;

    s1 = 0; s0 = 0;
    #10;

    s1 = 1; s0 = 0;
    #10;

    s1 = 0; s0 = 1;
    #10;

    s1 = 1; s0 = 1;
    #10;

    d = 0;
    #10;

    $finish;

end

endmodule
