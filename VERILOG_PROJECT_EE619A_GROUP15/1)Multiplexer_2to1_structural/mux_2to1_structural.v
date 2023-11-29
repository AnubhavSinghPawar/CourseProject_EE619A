module mux_2to1_structural(OUT,I1,I0,Sel); //Defines a module mux with 4 ports OUT,Iq,I0,Sel
input I0,I1,Sel; //Defines inputs to the module I0,I1, Sel
output OUT; //Defines output for the module OUT
wire y0,y1,Sel_n; //Declared three wires: Sel_n, y0, and y1
not(Sel_n,Sel); //Sel_n is complement of Sel
nand(y0,I0,Sel_n); //Defines y0 as the output nand gate, while I0 and Sel_n are inputs
nand(y1,I1,Sel); //Defines y1 as the output nand gate, while I1 and Sel_n are inputs
nand(OUT,y0,y1); //Defines OUT as the output nand gate, while yo and y1 are inputs
endmodule //Defines end of Module defination