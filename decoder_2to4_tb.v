`timescale 1ns/1ps

module decoder_2to4_tb;

reg a,b;
wire y0,y1,y2,y3;

// Design Under Test
decoder_2to4 uut (
    .a(a),
    .b(b),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin

    // Create VCD file
    $dumpfile("decoder/decoder_2to4.vcd");
    $dumpvars(0, decoder_2to4_tb);

    // Test 1
    a = 0;
    b = 0;
    #10;

    // Test 2
    a = 0;
    b = 1;
    #10;

    // Test 3
    a = 1;
    b = 0;
    #10;

    // Test 4
    a = 1;
    b = 1;
    #10;

    // Stop simulation
    $finish;

end

endmodule