`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:10 04/04/2020 
// Design Name: 
// Module Name:    stringdetectora 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module stringdetectora(
    input [3:0] string1,
    input string2,
    input clk,
	 output reg [19:0] secondstring=0,
    output reg [3:0] N=0 
    );

reg [3:0] checking;
reg [4:0] counter=0;
reg[4:0] cc=17;
reg[3:0] number;
reg [3:0] tedad=0;


always @(posedge clk) begin
  if (counter < 21) begin
      tedad=4'b0000;
      secondstring[19:0]={string2,secondstring[19:1]};
		counter=counter+1;
	end
	if(counter==20) begin
	N=4'b0000;
	end
	if (counter==21) begin
	    if (cc>0) begin
	         checking[3:0]={secondstring[cc+2],secondstring[cc+1],secondstring[cc],secondstring[cc-1]};
				if (checking==string1) tedad=tedad+1;
				cc=cc-5'b00001;
			end
		end
	if (cc==0) begin
	    N=tedad;
		 counter=5'b00000;
		 secondstring=20'b00000000000000000000;
		 cc=17;
	end		
			
		
	    
end    
endmodule
