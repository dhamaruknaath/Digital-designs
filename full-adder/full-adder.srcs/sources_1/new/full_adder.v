`timescale 1ns / 1ps

module full_adder(
input wire A,
input wire B,
input wire Cin,
output wire Sum,
output wire Cout
    );
    
    wire w1, w2, w3;
    
    xor x1(w1, A, B);
    xor x2(Sum, w1, Cin);
    
    and a1(w2, A, B);
    and a2(w3, w2, Cin);
    or (Cout, w2, w3);
    
endmodule
