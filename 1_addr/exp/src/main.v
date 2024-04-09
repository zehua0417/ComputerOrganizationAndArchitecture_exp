`timescale 1ns/1ns
module full_adder1(
    input [31:0] Num_1, Num_2,
    input        Cin,
    output [31:0] Sum,
    output        Cout,
    output        OV, // overflow
    output        ZF, // zero flag
    output        NF, // negative flag
    output        CF  // carry flag
);

    genvar i;
    wire [31:0] Cout_wire;

    generate
        bit_adder adder(
            .Bit_1(Num_1[0]),
            .Bit_2(Num_2[0]),
            .Cin(Cin),
            .So(Sum[0]),
            .Co(Cout_wire[0])
        );
        for (i = 1; i < 32; i = i + 1)
        begin
            bit_adder adder(
                .Bit_1(Num_1[i]),
                .Bit_2(Num_2[i]),
                .Cin(Cout_wire[i - 1]),
                .So(Sum[i]),
                .Co(Cout_wire[i])
            );
        end
    endgenerate

    assign Cout = Cout_wire[31];
    assign OV = Cout_wire[30] ^ Cout_wire[31];
    assign ZF = Sum == 0;
    assign NF = Sum[31];
    assign CF = Cout_wire[31];

endmodule
