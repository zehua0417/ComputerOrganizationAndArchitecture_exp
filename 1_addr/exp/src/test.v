`timescale 1ns/1ns
 
module test ;
    // input 
    reg [15:0] operand1, operand2;
    reg        carry_in;
    //wire [15:0] comp_1, comp_2;

    // output
    wire [15:0] sum;
    //wire [15:0] result;
    wire       carry_out;
    wire       g;
    wire       p;
    wire       overflow;
    wire       zero_flag;
    wire       negative_flag;
    wire       carry_flag;

    //four_bit_LCU_adder four_bit_LCD_adder_1(
    //    .input_1(operand1),
    //    .input_2(operand2),
    //    .cin(carry_in),
    //    .sum(sum),
    //    .co(carry_out),
    //    .po(p),
    //    .go(g)
    //);

    //complement complement_1(
    //    .Num(operand1),
    //    .Comp(comp_1)
    //); 

    //complement complement_2(
    //    .Num(operand2),
    //    .Comp(comp_2)
    //);

    sixteen_bit_full_adder sixteen_bit_full_adder_1(
        .Num_1(operand1),
        .Num_2(operand2),
        .Cin(carry_in),
        .Sum(sum),
        .Cout(carry_out),
        .po(p),
        .go(g),
        .OV(overflow),
        .ZF(zero_flag),
        .NF(negative_flag),
        .CF(carry_flag)
    );

    // complement complement_3(
    //     .Num(sum),
    //     .Comp(result)
    // );  
    

    initial begin 
        operand1 = 0;
        operand2 = 0;
        carry_in = 0;
        #100;

        operand1 = 1;
        operand2 = 2;
        carry_in = 1;
        #100;

        operand1 = -1;
        operand2 = -2;
        carry_in = 0;
        #100;

        operand1 = 1000_0000_0000_0000;
        operand2 = 1000_0000_0000_0000;
        carry_in = 0;
    end

    // always #10 operand1 = $random;
    // always #10 operand2 = $random;
    // always #10 carry_in = {$random} % 2;
endmodule
