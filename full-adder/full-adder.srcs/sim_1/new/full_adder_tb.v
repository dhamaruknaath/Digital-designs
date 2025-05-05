`timescale 1ns / 1ps



module full_adder_tb(A, B, Cin, Sum, Cout);

reg A;
reg B;
reg Cin;

wire Sum;
wire Cout;

full_adder uut(
.A(A),
.B(B),
.Cin(Cin),
.Sum(Sum),
.Cout(Cout)
);

initial begin

 // Initialize inputs
        A = 0; B = 0; Cin = 0;

        // Monitor outputs
        $monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b", $time, A, B, Cin, Sum, Cout);

        // Apply all input combinations
        #10 A = 0; B = 0; Cin = 0;  // 0 + 0 + 0
        #10 A = 0; B = 0; Cin = 1;  // 0 + 0 + 1
        #10 A = 0; B = 1; Cin = 0;  // 0 + 1 + 0
        #10 A = 0; B = 1; Cin = 1;  // 0 + 1 + 1
        #10 A = 1; B = 0; Cin = 0;  // 1 + 0 + 0
        #10 A = 1; B = 0; Cin = 1;  // 1 + 0 + 1
        #10 A = 1; B = 1; Cin = 0;  // 1 + 1 + 0
        #10 A = 1; B = 1; Cin = 1;  // 1 + 1 + 1

        // End simulation
        #10 $finish;

end
endmodule
