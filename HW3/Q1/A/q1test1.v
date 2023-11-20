`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:38 04/04/2020
// Design Name:   speedometer
// Module Name:   C:/Users/Mahyar Onsori/Desktop/shanbe/q11/q1test1.v
// Project Name:  q11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: speedometer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q1test1;

	// Inputs
	reg clk;
	reg pulse;
	reg reset;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	speedometer uut (
		.clk(clk), 
		.pulse(pulse), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		pulse = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish        
		// Add stimulus here
		#1500000000 reset=1;
		#100000000 reset=0;

	end
	
always #12.5 clk=~clk;
always #12500000 pulse=~pulse;
endmodule

