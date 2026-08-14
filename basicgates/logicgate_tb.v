`timescale 1ns/1ps

module logicgate_tb;

reg a;
reg b;

wire y1;
wire y2;
wire y3;
wire y4;
wire y5;
wire y6;
wire y7;

gates uut (
    .a(a),
    .b(b),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);

initial begin

    $dumpfile("basiclogicgate/logicgate.vcd");
    $dumpvars(0, logicgate_tb);

    a = 0;
    b = 0;
    #10;

    a = 0;
    b = 1;
    #10;

    a = 1;
    b = 0;
    #10;

    a = 1;
    b = 1;
    #10;

    $finish;

end

endmodule
