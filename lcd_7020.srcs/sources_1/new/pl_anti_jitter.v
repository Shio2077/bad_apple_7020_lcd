`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/19 09:20:43
// Design Name: 
// Module Name: pl_anti_jitter
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


module pl_anti_jitter#(
    parameter TIMS_1S   =   50_000_000,   
    parameter TIMS_DLY  =   2_500_000
)
(
    input   clk,
    input   rst_n,
    input   key_i,
    output  key_o    // key output after anti jitter
    );
    
    reg         key_d;
    // key_i -> key_o, 50 ms delay
    reg [23:0]  cnt;
    // counter full flag
    reg         flg_cnt_full;
    // STATE REG
    reg [3:0]   st_next;
    reg [3:0]   st_curr;
    reg         st_busy;
    // STATE DEFINITION
   localparam   IDLE    =   4'b1;
   localparam   KEY_JT  =   4'b10;
   localparam   KEY_DN  =   4'b100;
 
    // STATE TRANSFER
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            st_curr         <=  IDLE;
            st_busy         <=  1'b0;
        end
        else begin
            st_curr         <=  st_next;
        end
    end
    
    // STATE TRANSFER CONDITION
    always@(*) begin
//        if(!st_busy) begin
            case(st_curr)
            IDLE: begin
                if(!key_i)
                    st_next =   KEY_JT;
                else
                    st_next =   IDLE;
            end
            KEY_JT:begin
                if(flg_cnt_full && (!key_i))   // has delayed for 50ms, key still keep 0
                    st_next =   KEY_DN;
                else if(flg_cnt_full && (key_i))// has delayed, but key goes 1
                    st_next =   IDLE;
                else                            // delay count not done
                    st_next =   st_curr;
                end
            KEY_DN: begin
                if(key_i == 0) begin
                    st_next =   st_curr;        // stay at key_dn state
                end
                else
                    st_next =   KEY_JT;         // go back 
            end
            default:
                    st_next =   IDLE;
            endcase
//        end
//        else begin
//            st_next =   st_curr;
//        end        
    end
    
    // STATE OUTPUT
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt             <=  24'b0;
            flg_cnt_full    <=  1'b0;
            key_d           <=  1'b1;
        end
        else begin
            case(st_next)
                IDLE:begin
                    cnt             <=  24'b0;
                    flg_cnt_full    <=  1'b0;
                    key_d           <=  1'b1;
                end
                KEY_JT:begin
                    if(cnt  !=  TIMS_DLY)begin
                        cnt             <=  cnt + 1'b1;
                        flg_cnt_full    <=  1'b0;
                    end
                    else begin
                        cnt             <=  24'b0;
                        flg_cnt_full    <=  1'b1;
                    end
                end
                KEY_DN: begin
                    key_d           <=  1'b0;   // key down output
                end
                default:begin
                    key_d           <=  1'b1;
                    cnt             <=  24'b0;
                    flg_cnt_full    <=  1'b0;
                end                
            endcase
        end  
    end
    
    assign  key_o   =   key_d;
endmodule
