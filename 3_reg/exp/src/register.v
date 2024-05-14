`timescale 1ns/1ns

/**
 * @brief 4位寄存器
 */
// module register_4bit(D, E, Q);
//     input [3:0] D;    // 4-bit data input
//     input E;          // Enable signal (common for all latches)
//     output [3:0] Q;   // 4-bit data output
// 
//     // Instantiate four D latches, one for each bit
//     d_latch latch0(D[0], E, Q[0], );
//     d_latch latch1(D[1], E, Q[1], );
//     d_latch latch2(D[2], E, Q[2], );
//     d_latch latch3(D[3], E, Q[3], );
// 
// endmodule // register_4bit

/**
 * @brief 32位寄存器
 */
module register_32bit(D, E, Q);
    input [31:0] D;    // 32-bit data input
    input E;          // Enable signal (common for all latches)
    output [31:0] Q;   // 32-bit data output

    // Instantiate 32 D latches, one for each bit
    // d_latch latches[31:0] (
    //     .D(D), 
    //     .E(E), 
    //     .Q(Q)
    // );
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin: gen_for
            d_latch latch(
                .D(D[i]), 
                .E(E), 
                .Q(Q[i])
            );
        end
    endgenerate

endmodule // register_32bit
