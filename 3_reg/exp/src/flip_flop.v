`timescale 1ns/1ns

/**
 * @brief R-S触发器
 * @param S 设置端set
 * @param R 重置端reset
 * @param Q 输出端
 * @param Q_bar 输出端的反相
 * 状态表:
    * R	S  | Q_n	Q_bar_n	    描述
    * 0	1  | 1	    Q_bar_n-1	设置Q为1
    * 1	0  | Q_n-1	1	        设置Q_bar为1
    * 1	1  | Q_n-1	Q_bar_n-1	保持前状态
    * 0	0  | 1	    1	        非法状态（禁止）
 */
module rs_nand_latch(R, S, Q);
    input R, S;
    output Q;

    wire Q_bar;

    nand n1(Q, S, Q_bar);
    nand n2(Q_bar, R, Q);

endmodule // r-s_nand_latch

/**
 * @brief D触发器
 * @param D 数据端 data
 * @param E 使能端 enable
 * @param Q 输出端
 * @param Q_bar 输出端的反相
    * 状态表:
        * E	D  | Q_n	Q_bar_n	    描述
        * 0	X  | Q_n-1	Q_bar_n-1	保持前状态
        * 1	0  | 0	    1	        重置Q
        * 1	1  | 1	    0	        设置Q
 */
module d_latch(D, E, Q);
    input D, E;
    output Q;

    wire wire_1, wire_2;

    nand n1(wire_1, D, E);
    nand n2(wire_2, E, wire_1);

    rs_nand_latch r_s_nand_latch_1(wire_2, wire_1, Q);
endmodule // d_latch