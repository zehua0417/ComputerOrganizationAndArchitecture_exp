`timescale 1ns/1ns
 
module test ;
    // input 
    reg [31:0] operand1, operand2;
    reg        carry_in;
    
    // output
    wire [31:0] sum;
    wire        carry_out;
    wire       overflow;
    wire       zero_flag;
    wire       negative_flag;
    wire       carry_flag;


    full_adder1 u_adder(
        .Num_1   (operand1),
        .Num_2   (operand2),
        .Cin     (carry_in),
        .Sum     (sum),
        .Cout    (carry_out),
        .OV      (overflow),
        .ZF      (zero_flag),
        .NF      (negative_flag),
        .CF      (carry_flag)
    );

    initial begin 
        operand1 = 0;
        operand2 = 0;
        carry_in = 0;
        #100;

        operand1 = 1;
        operand2 = 2;
        carry_in = 1;
        #100;

        operand1 = 32'h80000000;
        operand2 = 32'hffffff00;
        carry_in = 0;
        #100;
    end

    // always #10 operand1 = $random;
    // always #10 operand2 = $random;
    // always #10 carry_in = {$random} % 2;
endmodule
