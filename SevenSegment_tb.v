`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona - ECE274A - Digital Logic
// Engineer: Adrian Bao
// 
// Create Date: 09/12/2018 01:40:10 PM
// Design Name: 
// Module Name: SevenSegment_tb
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


module SevenSegment_tb();

    reg [3:0] numin_tb;
    wire [6:0] segout_tb;
    
    SevenSegment m1(numin_tb, segout_tb);
    
    initial
    begin
        //Case 0
        numin_tb = 4'b0000;
        #10
        //Case 1
        numin_tb = 4'b0001;
        #10
        //Case 2
        numin_tb = 4'b0010;
        #10                
        //Case 3
        numin_tb = 4'b0011;
        #10        
        //Case 4
        numin_tb = 4'b0100;
        #10
        //Case 5
        numin_tb = 4'b0101;
        #10
        //Case 6
        numin_tb = 4'b0110;
        #10        
        //Case 7
        numin_tb = 4'b0111;
        #10
        //Case 8
        numin_tb = 4'b1000;
        #10
         //Case 9
        numin_tb = 4'b1001;
        #10
        //Case 10
        numin_tb = 4'b1010;
        #10
        //Case 11
        numin_tb = 4'b1011;
        #10
        //Case 12
        numin_tb = 4'b1100;
        #10
        //Case 13
        numin_tb = 4'b1101;
        #10
        //Case 14
        numin_tb = 4'b1110;
        #10
        //Case 15
        numin_tb = 4'b1111;
        
    end        
             
endmodule
