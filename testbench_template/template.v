`timescale 1ns/1ps

// ============================================================
// VERILOG TESTBENCH TEMPLATE
// Replace all <...> fields with your circuit information.
// ============================================================

module <testbench_name>;

    // --------------------------------------------------------
    // 1. INPUT SIGNALS
    // Use reg because the testbench controls the inputs.
    // --------------------------------------------------------

    reg <input_1>;
    reg <input_2>;

    // Add more inputs if required:
    // reg <input_3>;
    // reg <input_4>;


    // --------------------------------------------------------
    // 2. OUTPUT SIGNALS
    // Use wire because the DUT produces the outputs.
    // --------------------------------------------------------

    wire <output_1>;

    // Add more outputs if required:
    // wire <output_2>;


    // --------------------------------------------------------
    // 3. DUT - DESIGN UNDER TEST
    // Instantiate your main Verilog module here.
    // --------------------------------------------------------

    <design_module_name> uut (

        .<design_input_1>(<input_1>),
        .<design_input_2>(<input_2>),
        .<design_output_1>(<output_1>)

        // Add more connections if required:
        // .<design_input_3>(<input_3>),
        // .<design_output_2>(<output_2>)

    );


    // --------------------------------------------------------
    // 4. TEST SEQUENCE
    // --------------------------------------------------------

    initial begin

        // ----------------------------------------------------
        // Create VCD waveform file
        // Change the path according to the circuit folder.
        // Example:
        // $dumpfile("mux/mux_4to1.vcd");
        // ----------------------------------------------------

        $dumpfile("<circuit_folder>/<waveform_name>.vcd");
        $dumpvars(0, <testbench_name>);


        // ----------------------------------------------------
        // TEST CASE 1
        // ----------------------------------------------------

        <input_1> = 0;
        <input_2> = 0;

        #10;


        // ----------------------------------------------------
        // TEST CASE 2
        // ----------------------------------------------------

        <input_1> = 0;
        <input_2> = 1;

        #10;


        // ----------------------------------------------------
        // TEST CASE 3
        // ----------------------------------------------------

        <input_1> = 1;
        <input_2> = 0;

        #10;


        // ----------------------------------------------------
        // TEST CASE 4
        // ----------------------------------------------------

        <input_1> = 1;
        <input_2> = 1;

        #10;


        // ----------------------------------------------------
        // END SIMULATION
        // ----------------------------------------------------

        $finish;

    end

endmodule
