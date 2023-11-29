module mux_2to1_behavioral(OUT,I0,I1,Sel); //Defines module for 2*1 mux with three input ports: ip0, ip1, and s0, and one output port out.
input I0, I1, Sel; // Defines ip0, ip1, and s0 are input ports to the module.
output OUT; // Defines output port of the module
reg OUT; // Defines Out as a register
always@(Sel or I0 or I1) // Define that block should be executed whenever any of the three input signals (s0, ip0, or ip1) change. 
begin
if(Sel) 
OUT = I1;  
else
OUT = I0;// Checks the value of s0 and gives the output respectively
end
endmodule
