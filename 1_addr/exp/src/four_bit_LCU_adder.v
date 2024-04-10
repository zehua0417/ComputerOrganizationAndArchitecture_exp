`timescale 1ns/1ns

module four_bit_CG(
    input [3:0] p, g,
    input cin,
    output [4:1] co,
    output po, go
);

assign co[1] = g[0] | p[0] & cin;
assign co[2] = g[1] | p[1] & g[0] | p[1] & p[0] & cin;
assign co[3] = g[2] | p[2] & g[1] | p[2] & p[1] & g[0] | p[2] & p[1] & p[0] & cin;
assign co[4] = g[3] | p[3] & g[2] | p[3] & p[2] & g[1] | p[3] & p[2] & p[1] & g[0] | p[3] & p[2] & p[1] & p[0] & cin;

assign po = p[3] ^ g[3];
assign go = g[3];

endmodule

module four_bit_LCU_adder(
    input [3:0] input_1, input_2,
    input cin,
    output [3:0] sum,
    output go,
	output po,
    output co
);

wire [3:0] p, g;
wire [4:1] c;
//wire po, go;

four_bit_CG four_bit_CG_1(
    .p(p),
    .g(g),
    .cin(cin),
    .co(c),
    .po(po),
    .go(go)
);

one_bit_adder bit_adder_1(
    .Bit_1(input_1[0]),
    .Bit_2(input_2[0]),
    .Cin(cin),
    .So(sum[0]),
    .P(p[0]),
    .G(g[0])
);

one_bit_adder bit_adder_2(
    .Bit_1(input_1[1]),
    .Bit_2(input_2[1]),
    .Cin(c[1]),
    .So(sum[1]),
    .P(p[1]),
    .G(g[1])
);

one_bit_adder bit_adder_3(
    .Bit_1(input_1[2]),
    .Bit_2(input_2[2]),
    .Cin(c[2]),
    .So(sum[2]),
    .P(p[2]),
    .G(g[2])
);

one_bit_adder bit_adder_4(
    .Bit_1(input_1[3]),
    .Bit_2(input_2[3]),
    .Cin(c[3]),
    .So(sum[3]),
    .P(p[3]),
    .G(g[3])
);

assign co = c[4];

endmodule
