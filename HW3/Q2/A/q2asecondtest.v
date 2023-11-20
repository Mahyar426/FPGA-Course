`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:37:32 04/04/2020
// Design Name:   stringdetectora
// Module Name:   C:/Users/Mahyar Onsori/Desktop/shanbe/q2a/q2asecondtest.v
// Project Name:  q2a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stringdetectora
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q2asecondtest;

	// Inputs
	reg [3:0] string1;
	reg string2;
	reg clk;

	// Outputs
	wire [19:0] secondstring;
	wire [3:0] N;

	// Instantiate the Unit Under Test (UUT)
	stringdetectora uut (
		.string1(string1), 
		.string2(string2), 
		.clk(clk), 
		.secondstring(secondstring), 
		.N(N)
	);

	initial begin
		// Initialize Inputs
		string1 = 4'b0101;
		string2 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=1;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		#160;
		
		string1=4'b1101;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=1;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;
		@(negedge clk) string2=0;
		@(negedge clk) string2=1;


	end
      
		
always #5 clk=~clk;

endmodule

