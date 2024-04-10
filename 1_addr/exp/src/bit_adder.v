`timescale 1ns/1ns
module one_bit_adder(
    input   Bit_1, Bit_2,
    input   Cin,
    output  So,
    output  G, P
    );

    assign G = Bit_1 & Bit_2;
    assign P = Bit_1 ^ Bit_2;
    assign So = Cin ^ P;
endmodule
