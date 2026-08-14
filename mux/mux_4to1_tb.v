`timescale 1ns/1ps

module mux_4to1_tb;

reg a0, a1, a2, a3;
reg s1, s0;
wire y;

mux_4to1 uut (
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .s1(s1),
    .s0(s0),
    .y(y)
);

initial begin

    $dumpfile("mux_4to1.vcd");
    $dumpvars(0, mux_4to1_tb);

    a0 = 1;
    a1 = 0;
    a2 = 1;
    a3 = 0;

    s1 = 0;
    s0 = 0;
    #10;

    s1 = 0;
    s0 = 1;
    #10;

    s1 = 1;
    s0 = 0;
    #10;

    s1 = 1;
    s0 = 1;
    #10;

    $finish;
end

endmodule
