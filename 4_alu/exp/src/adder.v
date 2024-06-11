`timescale 1ns / 1ps
//*************************************************************************
//   > 文件名: adder.v
//   > 描述  ：加法器，直接使用"+"，会自动调用库里的加法器
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
module adder(
    input  [31:0] operand1, // 32位输入
    input  [31:0] operand2, // 32位输入
    input         cin,      // 进位
    output [31:0] result,   // 32位输出
    output        cout      // 进位输出
    );
    assign {cout,result} = operand1 + operand2 + cin;

endmodule
