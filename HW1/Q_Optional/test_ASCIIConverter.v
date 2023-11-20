`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:55:30 02/29/2020
// Design Name:   ASCIIConverter
// Module Name:   C:/Users/Dear User/Desktop/tamrin 1/q5/q5/test_ASCIIConverter.v
// Project Name:  q5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ASCIIConverter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ASCIIConverter;

	// Inputs
	reg [7:0] inputnumber;

	// Outputs
	wire [7:0] outputnumber;
	wire Cap;

	// Instantiate the Unit Under Test (UUT)
	ASCIIConverter uut (
		.inputnumber(inputnumber), 
		.outputnumber(outputnumber), 
		.Cap(Cap)
	);

	initial begin
		// Initialize Inputs
		inputnumber = 97;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
inputnumber=98;
#10;
inputnumber=65;
#10;
inputnumber=74;
#10;
	end
      
endmodule

