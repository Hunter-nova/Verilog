`timescale 1ns/1ps

module encoder_2to4_tb;

reg d3, d2, d1, d0;
wire y0, y1;

// Design Under Test
encoder_2to4 uut (
    .d3(d3),
    .d2(d2),
    .d1(d1),
    .d0(d0),
    .y0(y0),
    .y1(y1)
);

initial begin

    // Create VCD waveform
    $dumpfile("encoder/encoder_2to4.vcd");
    $dumpvars(0, encoder_2to4_tb);

    // Test 1
    d3 = 0;
    d2 = 0;
    d1 = 0;
    d0 = 0;
    #10;

    // Test 2
    d3 = 0;
    d2 = 0;
    d1 = 0;
    d0 = 1;
    #10;

    // Test 3
    d3 = 0;
    d2 = 0;
    d1 = 1;
    d0 = 0;
    #10;

    // Test 4
    d3 = 0;
    d2 = 1;
    d1 = 0;
    d0 = 0;
    #10;

    // Test 5
    d3 = 1;
    d2 = 0;
    d1 = 0;
    d0 = 0;
    #10;

    // Stop simulation
    $finish;

end

endmodule
