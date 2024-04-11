`timescale 1ns/1ns
module sixteen_bit_full_adder(
    input [15:0] Num_1, Num_2,
    input Cin,
    output [15:0] Sum,
    output go, po,
    output Cout,
    output OV, // overflow
    output ZF, // zero flag
    output NF, // negative flag
    output CF  // carry flag
);

wire [3:0] G, P, C;

// change inputs into complement if it's negative
// wire [15:0] input_1 = Num_1[15] ? ~Num_1 + 1 : Num_1;
// wire [15:0] input_2 = Num_2[15] ? ~Num_2 + 1 : Num_2;


four_bit_CG four_bit_CG_1(
    .p(P),
    .g(G),
    .cin(Cin),
    .co(C),
    .po(po),
    .go(go)
);

four_bit_LCU_adder four_bit_LCD_adder_1(
    .input_1(Num_1[3:0]),
    .input_2(Num_2[3:0]),
    .cin(Cin),
    .sum(Sum[3:0]),
    .go(G[0]),
    .po(P[0])
);

four_bit_LCU_adder four_bit_LCD_adder_2(
    .input_1(Num_1[7:4]),
    .input_2(Num_2[7:4]),
    .cin(G[0]),
    .sum(Sum[7:4]),
    .go(G[1]),
    .po(P[1])
);

four_bit_LCU_adder four_bit_LCD_adder_3(
    .input_1(Num_1[11:8]),
    .input_2(Num_2[11:8]),
    .cin(G[1]),
    .sum(Sum[11:8]),
    .go(G[2]),
    .po(P[2])
);

four_bit_LCU_adder four_bit_LCD_adder_4(
    .input_1(Num_1[15:12]),
    .input_2(Num_2[15:12]),
    .cin(G[2]),
    .sum(Sum[15:12]),
    .go(G[3]),
    .po(P[3])
);

// change the output into complement if it's negative
//assign Sum = NF ? ~Sum + 1 : Sum;

assign Cout = C[3];
assign OV = C[3] ^ C[2];
assign ZF = Sum == 0;
assign NF = Sum[15];
assign CF = C[3];

// assign OV = Cout_wire[30] ^ Cout_wire[31];
// assign ZF = Sum == 0;
// assign NF = Sum[31];
// assign CF = Cout_wire[31];

endmodule

//module complement(
//    input [15:0] Num,
//    output reg [15:0] Comp
//);
//
//always @* begin
//    //Comp = Num[15] ? ~Num + 1 : Num;
//    if (Num[15] == 1) begin
//        Comp[14:0] = ~Num[14:0];
//        Comp = Comp + 1;
//        Comp[15] = 1;
//    end
//    else begin
//        Comp = Num;
//    end
//end
//
//endmodule
