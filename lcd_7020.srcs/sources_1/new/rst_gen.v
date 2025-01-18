`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/09 11:32:59
// Design Name: 
// Module Name: rst_gen
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

module rst_gen(
    input   clk,
    output  rst_n
    );
    parameter T1MS = 24'd5_000_000 ; //50M����ʱ��
    reg [23:0]time_count    =    0;//ʱ�Ӽ�����
    reg rst_n;
    
    //initial begin
    //    time_count=26'd0;
    //    rst_n=1'b1;
    //end
    
    always@(posedge clk) begin
        case (time_count)
            24'd1_000_000: begin 
                rst_n   <=  1'b0;
                time_count  <=  time_count  +   26'b1;
            end
            T1MS: begin 
                rst_n   <=  1'b1;
            end
            24'hFFF_FFF_FFF: begin
                time_count  <=  26'b0;
                time_count  <=  time_count  +   26'b1;
            end
            default: begin
                time_count  <=  time_count  +   26'b1;
            end
        endcase
    end
    
endmodule