`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 12:47:59 PM
// Design Name: 
// Module Name: adder_4bit_tb
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

module adder_4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire [4:0] sum;
    
    four_bit_adder uut (
        .a(a),
        .b(b),
        .sum(sum)
    );
    
    initial begin
        $display("Time\t a\t b\t sum");
        $monitor("%0dns\t%b\t%b", $time, a, b, sum);
        
        a = 4'b0001; b = 4'b0010; #10;
        a = 4'b0100; b = 4'b0101; #10;
        a = 4'b1111; b = 4'b0001; #10;
        a = 4'b1010; b = 4'b0011; #10;
        
        $stop;
    end
endmodule 