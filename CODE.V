`timescale 1ns / 1ps

module positive_edge_detector(input clk , data ,output edge_detect);
     
      reg data_d;
      always @ (posedge clk)
         begin 
              data_d <= data;
          end
          
          assign edge_detect = data & ~data_d ;
 
endmodule
