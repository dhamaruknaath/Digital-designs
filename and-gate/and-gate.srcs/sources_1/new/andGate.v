`timescale 1ns / 1ps

module andGate(
x,y,f
    );
    input x,y;
    output f;
    assign f = x & y;
endmodule
