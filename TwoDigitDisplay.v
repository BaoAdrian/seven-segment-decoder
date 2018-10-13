`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona - ECE274A - Digital Logic
// Engineer: R. Thamvichai
// Purpose: Imported via D2L to incorporate SevenSegment Project as a module 
//          for TwoDigitDisplay Circuit Design.
//
// Utilitzed by: Adrian Bao in compliance with Lab 2 specifications.
// 
// Create Date: 08/12/2018 01:15:14 PM
// Design Name: 
// Module Name: TwoDigitDisplay
//////////////////////////////////////////////////////////////////////////////////
module TwoDigitDisplay(Clk, Number, out7, en_out);
    input  Clk;
    input  [6:0] Number;
    output [6:0] out7; //seg a, b, ... g
    output reg [3:0] en_out;
             
    reg  [3:0] in4;        
    reg  [3:0] firstdigit;
    reg  [3:0] seconddigit;
    
    //--------- --------- --------- --------- //
    //-- to use the module SevenSegment 
    SevenSegment m1(in4, out7);
    //--------- --------- --------- --------- //
         
    //-- divider counter for ~95.3Hz refresh rate (with 100MHz main clock)
    reg  [19:0] cnt;
    always @(posedge Clk) begin
        cnt <= cnt + 1;
    end
    
    //-- to seperate each decimal digit for display
    always @(Number) begin
            if (Number < 100)
                begin
                    firstdigit <= Number%10;
                    seconddigit <= Number/10;
                end 
             else
             begin
                    firstdigit <= 4'b1111;
                    seconddigit <= 4'b1111;
             end
    end
    
    //-- to display the number in the appropriate 7-segment digit
    always @(*) begin
        case(cnt[19:17]) 
            3'b000: begin en_out <= 4'b1110; in4 <= firstdigit; end     //stays here from 0 to 20'b0011_1111_1111_1111_1111
            3'b001: begin en_out <= 4'b1110; in4 <= firstdigit; end     //262144 = 2^18 clock cycles -> 2.6214 ms
                                                                        //based on this code, it is back here every 10.486 msec                                                           
            3'b010: begin en_out <= 4'b1101; in4 <= seconddigit; end
            3'b011: begin en_out <= 4'b1101; in4 <= seconddigit; end
            
            //can be used if need to display more than 2 digits
            //3'b100: begin en_out <= 4'b1011;
            //3'b101: begin en_out <= 4'b1011;
            //3'b110: begin en_out <= 4'b0111;
            //3'b111: begin en_out <= 4'b0111;
            
            default: begin en_out <= 4'b1111; in4 <= 4'b1111; end 
        endcase
     end
     
     
    
endmodule
