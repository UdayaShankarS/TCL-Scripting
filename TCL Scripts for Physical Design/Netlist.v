module 4x1_mux (out, in0, in1, in2, in3, s0, s1); 
output out;  
input in0, in1, in2, in3, s0, s1; 
wire inv0, inv1;
wire a0, a1, a2, a3; 
not1x1 not_0 (inv0, s0); 
not1x1 not_1 (inv1, s1); 
and2x1 and_0 (a0, in0, inv0, inv1); 
and2x1 and_1 (a1, in1, inv0, s1); 
and2x1 and_2 (a2, in2, s0, inv1); 
and2x1 and_3 (a3, in3, s0, s1); 
or2x1 or_0 (out, a0, a1, a2, a3); 
endmodule
