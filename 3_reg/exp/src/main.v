`timescale 1ns / 1ps

module regfile(clk, rst, we, waddr, wdata, raddr1, rdata1, raddr2, rdata2, test_addr, test_data);
    input clk;                  // 时钟信号 clock
    input rst;                  // 复位信号 reset
    input we;                   // 写使能信号 write enable
    input [4:0] waddr;          // 写地址 write address
    input [31:0] wdata;         // 写数据 write data
    input [4:0] raddr1;         // 读地址1 read address 1
    input [4:0] raddr2;         // 读地址2 read address 2
    input [4:0] test_addr;      // 测试地址 test address
    output [31:0] rdata1;       // 读数据1 read data 1
    output [31:0] rdata2;       // 读数据2 read data 2
    output [31:0] test_data;    // 测试数据 test data
    

    reg enable[31:0];
    wire [31:0] reg_outputs[31:0];

    integer i;
    always @(posedge clk) begin  // 时钟上升沿触发
        // 复位时，将所有寄存器的使能信号置0
        if (rst) begin
            for (i = 0; i < 32; i = i + 1) begin
                enable[i] <= 0; // 非阻塞赋值
            end
        end else begin
            // we为1且地址等于waddr时，使能信号为1
            for (i = 0; i < 32; i = i + 1) begin
                if (we && i == waddr) begin
                    enable[i] <= 1;
                end else begin
                    enable[i] <= 0;
                end
            end
        end
    end

    // 32个32位寄存器
    genvar j;
    generate
        for (j = 0; j < 32; j = j + 1) begin : regs
            register_32bit register_inst (
                .D(wdata),
                .E(enable[j]),
                .Q(reg_outputs[j])
            );
        end
    endgenerate

    // 读数据
    assign rdata1 = reg_outputs[raddr1];
    assign rdata2 = reg_outputs[raddr2];

    // 测试数据, 读出寄存器的值显示在触摸屏上
    assign test_data = reg_outputs[test_addr];

endmodule //regfile
