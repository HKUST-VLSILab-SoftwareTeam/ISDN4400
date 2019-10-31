`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Charles
// Create Date: 30.10.2019 19:31:23
// Description: (1) Convert 4 bit binary number to its corresponding hex value.
//              (2) Display on 7-segment LEDs.
//              (3) When you press the bottom, the HEX value should increament hy
//                  1.
//////////////////////////////////////////////////////////////////////////////////
`include "SevenSegDisplay.vh"

module Bin2HexConverter(
    input   wire            clk,
    input   wire            reset,
    input   wire            bottom,
                // bottom input port
    output  reg     [7:0]   to_7_seg_n,
                // controlling 7 segment LED to display numbers
    output  wire    [3:0]   to_7_seg_sel_n
                // control signal connecting to 7 segment LED selection port
    );

// nets -------------------------------------------------------------------------
reg     [1:0]   bottom_r; 
wire            bottom_rising;
   
// "bottom" raising edge detection ----------------------------------------------
always@(posedge clk or posedge reset) begin
    if(reset) begin
        bottom_r <= 2'd0;
    end else begin
        bottom_r[1] <= bottom_r[0];
        bottom_r[0] <= bottom;
    end
end

assign bottom_rising = bottom_r[0] & ~bottom_r[1];

// 7 segment LED display configuration -------------------------------------------
always@(posedge clk or negedge reset) begin
    if(reset) begin
        to_7_seg_n <= `NUM_OFF;
    end else begin
        if(bottom_rising) begin
            // simple finite state mechine
            case(to_7_seg_n)
            `NUM_OFF: begin
                to_7_seg_n <= `NUM_0;
            end
            
            `NUM_0: begin
                to_7_seg_n <= `NUM_1;
            end
                        
            `NUM_1: begin
                to_7_seg_n <= `NUM_2;
            end
            
            `NUM_2: begin
                to_7_seg_n <= `NUM_3;
            end
            
            `NUM_3: begin
                to_7_seg_n <= `NUM_4;
            end
            
            `NUM_4: begin
                to_7_seg_n <= `NUM_5;
            end
            
            `NUM_5: begin
                to_7_seg_n <= `NUM_6;
            end
            
            `NUM_6: begin
                to_7_seg_n <= `NUM_7;
            end
            
            `NUM_7: begin
                to_7_seg_n <= `NUM_8;
            end
            
            `NUM_8: begin
                to_7_seg_n <= `NUM_9;
            end
            
            `NUM_9: begin
                to_7_seg_n <= `NUM_A;
            end
            
            `NUM_A: begin
                to_7_seg_n <= `NUM_B;
            end
            
            `NUM_B: begin
                to_7_seg_n <= `NUM_C;
            end
            
            `NUM_C: begin
                to_7_seg_n <= `NUM_D;
            end
            
            `NUM_D: begin
                to_7_seg_n <= `NUM_E;
            end
            
            `NUM_E: begin
                to_7_seg_n <= `NUM_F;
            end
            
            `NUM_F: begin
                to_7_seg_n <= `NUM_OFF;
            end
            
            default begin
                to_7_seg_n <= `NUM_OFF;
            end
            endcase
        end
    end
end

assign to_7_seg_sel_n = `AN0_ON; // always turn on the ANO

endmodule
