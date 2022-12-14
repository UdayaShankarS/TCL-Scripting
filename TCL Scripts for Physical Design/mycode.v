module 4x1_mux (out, in0, in1, in2, in3, s0, s1); 
input in0, in1, in2, in3, s0, s1; 
output out;  
wire inv0, inv1, a0, a1, a2, a3;
not not_0 (inv0, s0); 
not not_1 (inv1, s1); 
and and_0 (a0, in0, inv0, inv1); 
and and_1 (a1, in1, inv0, s1); 
and and_2 (a2, in2, s0, inv1); 
and and_3 (a3, in3, s0, s1); 
or or_0 (out, a0, a1, a2, a3); 
endmodule