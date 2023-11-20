`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:29:31 04/04/2020
// Design Name:   stringdetectorbb
// Module Name:   C:/Users/Mahyar Onsori/Desktop/shanbe/q2b/q2btest1.v
// Project Name:  q2b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stringdetectorbb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q2btest1;

	// Inputs
	reg [3:0] string1;
	reg string2;
	reg clk;

	// Outputs
	wire [19:0] secondstring;
	wire [3:0] N;

	// Instantiate the Unit Under Test (UUT)
	stringdetectorbb uut (
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
		string1=4'b1001;
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

