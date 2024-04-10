`timescale 1ns/1ns
module bit_adder(
    input   Bit_1, Bit_2,
    input   Cin,
    output  So,
    output  Co);
 
    wire Xor;

    assign Xor = Bit_1 ^ Bit_2;
    assign So = Xor ^ Cin;
    assign Co = Xor & Cin | Bit_1 & Bit_2;
endmodule
