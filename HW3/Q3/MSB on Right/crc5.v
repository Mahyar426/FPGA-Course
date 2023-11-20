`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:02 04/09/2020 
// Design Name: 
// Module Name:    crc5 
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
module crc5(
    input data_in,
    input clk,
    input reset_l,
    output reg [4:0] crc5out
    );
reg [3:0] counter=4'b0000;
reg [4:0] shiftregister=5'b00000;
always @(posedge clk) begin
           if (reset_l!=1) begin 
                    counter<=counter+1;
						  shiftregister[0]<=(shiftregister[4]^data_in);
						  shiftregister[1]<=shiftregister[0];
						  shiftregister[2]<=((shiftregister[4]^data_in)^shiftregister[1]);
						  shiftregister[3]<=shiftregister[2];
						  shiftregister[4]<=shiftregister[3];
						  if(counter==4)begin
						          crc5out[4:0]<=shiftregister[4:0];
									 shiftregister<=5'b00000;
									 counter<=4'b0000;
						  end
			   end
				
				if(reset_l==1) begin
				crc5out<=5'b00000;
				end
				
				
end
			 

endmodule
