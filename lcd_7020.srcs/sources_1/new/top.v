`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 11:17:04
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top (
    inout [14:0] DDR_addr,
    inout [2:0] DDR_ba,
    inout DDR_cas_n,
    inout DDR_ck_n,
    inout DDR_ck_p,
    inout DDR_cke,
    inout DDR_cs_n,
    inout [3:0] DDR_dm,
    inout [31:0] DDR_dq,
    inout [3:0] DDR_dqs_n,
    inout [3:0] DDR_dqs_p,
    inout DDR_odt,
    inout DDR_ras_n,
    inout DDR_reset_n,
    inout DDR_we_n,
    inout FIXED_IO_ddr_vrn,
    inout FIXED_IO_ddr_vrp,
    inout [53:0] FIXED_IO_mio,
    inout FIXED_IO_ps_clk,
    inout FIXED_IO_ps_porb,
    inout FIXED_IO_ps_srstb,
    inout [4:0] GPIO_0_0_tri_io,
    inout SPI_0_0_io0_io,
    inout SPI_0_0_sck_io,
    inout SPI_0_0_ss_io,
    input key_input,         // 按键输入信号
    output key_output        // 按键消抖后的输出信号
);

    // 时钟信号连接
    wire clk_50m;
    assign clk_50m = FCLK_CLK0_0;

    // 复位信号
    wire rst_n;
    
    // 
    wire key_output_n;
    assign key_output = !key_output_n;

    // Zynq7 Wrapper 实例化
    zynq_7_wrapper zynq_inst (
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK0_0(FCLK_CLK0_0), // 输出的时钟信号
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_0_0_tri_io(GPIO_0_0_tri_io),
        .SPI_0_0_io0_io(SPI_0_0_io0_io),
        .SPI_0_0_sck_io(SPI_0_0_sck_io),
        .SPI_0_0_ss_io(SPI_0_0_ss_io)
    );

    // 复位模块实例化
    rst_gen rst_inst (
        .clk(clk_50m),     // 输入时钟信号
        .rst_n(rst_n)      // 输出复位信号
    );

    // 按键消抖模块实例化
    pl_anti_jitter #(
        .TIMS_1S(50_000_000),  // 时钟周期数，1秒（50MHz时钟）
        .TIMS_DLY(2_500_000)   // 消抖延时，50ms
    ) anti_jitter_inst (
        .clk(clk_50m),         // 输入时钟信号
        .rst_n(rst_n),         // 输入复位信号
        .key_i(key_input),     // 输入按键信号
        .key_o(key_output_n)     // 输出消抖后的按键信号
    );

endmodule
