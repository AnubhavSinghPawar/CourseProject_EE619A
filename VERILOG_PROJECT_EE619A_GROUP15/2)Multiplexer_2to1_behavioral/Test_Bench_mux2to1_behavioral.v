`timescale 1ns / 1ps

module Test_Bench_mux2to1_behavioral;

  // Inputs
  reg I0;
  reg I1;
  reg Sel;

  // Outputs
  wire OUT;

  // Instantiate the DUT (Design Under Test)
  mux_2to1_behavioral(
  .OUT(OUT),
  .I1(I1),
  .I0(I0),
  .Sel(Sel)
  );

  initial begin
    // Test case 1 - sel = 0
    I1 = 0;
    I0 = 1;
    Sel = 0;
    #10;

    // Test case 2 - sel = 1
    I1 = 0;
    I0 = 1;
    Sel = 1;
    #10;

    // Test case 3 - sel = 0
    I1 = 1;
    I0 = 0;
    Sel = 0;
    #10;

    // Test case 4 - sel = 1
    I1 = 1;
    I0 = 0;
    Sel = 1;
    #10;
    // Test case 5 - sel = 1 (a = b)
    I1 = 1;
    I0 = 1;
    Sel = 0;
    #10;

    // Test case 6 - sel = 0 (a = b)
    I1 = 1;
    I0 = 1;
    Sel = 1;
    #10;
    $finish;
  end

endmodule

