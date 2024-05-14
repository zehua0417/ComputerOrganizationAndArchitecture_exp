`timescale 1ns / 1ps

module tb_regfile;

    // Inputs
    reg clk;
    reg rst;
    reg we;
    reg [4:0] waddr;
    reg [31:0] wdata;
    reg [4:0] raddr1;
    reg [4:0] raddr2;

    // Outputs
    wire [31:0] rdata1;
    wire [31:0] rdata2;

    // Instantiate the regfile module
    regfile uut (
        .clk(clk),
        .rst(rst),
        .we(we),
        .waddr(waddr),
        .wdata(wdata),
        .raddr1(raddr1),
        .rdata1(rdata1),
        .raddr2(raddr2),
        .rdata2(rdata2)
    );

    // 生成时钟信号
    initial begin
        clk = 0;
        forever #5 clk = !clk;  // Generate a clock with 10 ns period
    end

    // Test cases
    initial begin
        // Initialize Inputs
        rst = 1; we = 0; waddr = 0; wdata = 0; raddr1 = 0; raddr2 = 0;

        // Apply reset
        #20 rst = 0;  // 释放复位信号，确保至少两个时钟周期内的状态

        // Wait for reset to propagate
        #10;

        // Case 1: 读写同一地址
        we = 1; waddr = 5; wdata = 32'hAAAA_BBBB;
        #10;  // Wait a clock cycle for write to complete
        we = 0; raddr1 = 5; raddr2 = 5;
        #10;  // Wait a clock cycle to read the data

        // Case 2: 读写不同地址
        #10; we = 1; waddr = 15; wdata = 32'h1234_5678;
        #10; we = 0; raddr1 = 15; raddr2 = 5;  // Read new data and previous data

        // Case 3: 不写入数据是否保持不变
        #20; raddr1 = 15; raddr2 = 5;

        #10 $finish;
    end

endmodule // tb_regfile





//=================================================================

// test register_32bit

// module tb_register_32bit;
//     // Inputs
//     reg [31:0] D;
//     reg E;
//     // Outputs
//     wire [31:0] Q;
//     // Instantiate the Unit Under Test (UUT)
//     register_32bit uut (
//         .D(D), 
//         .E(E), 
//         .Q(Q)
//     );
//     // Initial block for test stimulus
//     initial begin
//         // Initialize Inputs
//         D = 32'b0;
//         E = 0;
//         // Wait 100 ns for global reset to allow for simulation stability
//         #100; 
//         // Test Case 1: Load a value with Enable high
//         E = 1; D = 32'hAAAAAAAA; #10;
//         E = 0; #10;  // Hold the value with Enable low
//         // Test Case 2: Change D while Enable is low
//         D = 32'h55555555; #10;
//         // Test Case 3: Enable again to load new value
//         E = 1; #10;
//         E = 0; #10;  // Hold the new value with Enable low
//         // Test Case 4: Check if value holds with changing D
//         D = 32'hFFFFFFFF; #10;
//         // Test Case 5: Load new value on Enable
//         E = 1; D = 32'h0000FFFF; #10;
//         E = 0; #10;  // Hold the last value with Enable low
//         // Additional test case to further verify the hold capability
//         D = 32'hFFFF0000; #10;
//         // End the test and finish the simulation
//         $finish;
//     end
// endmodule // tb_register_32bit


//=================================================================

// module tb_register_4bit;
//     // Inputs
//     reg [3:0] D;
//     reg E;
//     // Outputs
//     wire [3:0] Q;
//     // Instantiate the Unit Under Test (UUT)
//     register_4bit uut (
//         .D(D), 
//         .E(E), 
//         .Q(Q)
//     );
//     // Initial block for test stimulus
//     initial begin
//         // Initialize Inputs
//         D = 4'b0000;
//         E = 0;
//         // Wait 100 ns for global reset
//         #100; 
//         // Test Case 1: Load a value with Enable high
//         E = 1; D = 4'b1010; #10;
//         E = 0; #10;  // Hold the value with Enable low
//         // Test Case 2: Change D while Enable is low
//         D = 4'b1100; #10;
//         // Test Case 3: Enable again to load new value
//         E = 1; #10;
//         E = 0; #10;  // Hold the new value with Enable low
//         // Test Case 4: Check if value holds with changing D
//         D = 4'b0011; #10;
//         // Test Case 5: Load new value on Enable
//         E = 1; D = 4'b1111; #10;
//         E = 0; #10;  // Hold the last value with Enable low
//         // Finish the simulation
//         $finish;
//     end
// endmodule // tb_register_4bit

//=================================================================

// test d_latch
// module test;
//     // Inputs
//     reg D, E;
//     // Outputs
//     wire Q, Q_bar;
//     // Instantiate the Unit Under Test (UUT)
//     d_latch uut (
//         .D(D), 
//         .E(E), 
//         .Q(Q), 
//         .Q_bar(Q_bar)
//     );
//     initial begin
//         // Initialize Inputs
//         D = 0;
//         E = 0;
//         // Wait 100 ns for global reset to finish
//         #100;
//         // Add stimulus here
//         D = 1;
//         E = 1;
//         #10;
//         D = 0;
//         E = 1;
//         #10;
//         D = 1;
//         E = 0;
//         #10;
//         D = 0;
//         E = 0;
//         #10;
//         // Add stimulus here
//     end
// endmodule // test
