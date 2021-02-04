module decoder3to8( i0,i1,i2,o0,o1,o2,o3,o4,o5,o6,o7); 


input  i0,i1,i2;  

output reg o0=0;
output reg o1=0;
output reg o2=0;
output reg o3=0;
output reg o4=0;
output reg o5=0;
output reg o6=0;
output reg o7=0;

   

always @ (i2,i1,i0)begin
 o0=0;

 o1=0;

 o2=0;

 o3=0;

 o4=0;

 o5=0;

 o6=0;

 o7=0;  
 case ({i2,i1,i0}) 

 3'b000: o0=1; 

 3'b001: o1=1; 
 
 3'b010: o2=1; 

 3'b011: o3=1; 

 3'b100: o4=1; 

 3'b101: o5=1; 

 3'b110: o6=1; 

 3'b111: o7=1; 

 endcase 

 end 
endmodule
