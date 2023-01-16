`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2023 09:12:55 PM
// Design Name: 
// Module Name: Clock1Hz_s
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


module Clock1Hz_s(LED, clk);

    output LED; 

    input clk; 
    
    reg [25:0] counter = 0;
    reg clk_out;        

    always @(posedge clk ) begin
        counter = counter + 1; 
        if (counter == 50000000) begin
            counter = 0; 
            clk_out = ~clk_out; 
        end       
    end 

    assign LED = clk_out; 

endmodule
