module Encoder(o0,o1,o2,o3,o4,o5,o6,o7,i0,i1,i2);
input o0,o1,o2,o3,o4,o5,o6,o7;
output wire i0,i1,i2;
assign i2 = o4|o5|o6|o7;//or(a,d4,d5,d6,d7);
assign i1 = o2|o3|o6|o7;//or(b,d2,d3,d6,d7);
assign i0 = o1|o3|o5|o7;//or(c,d1,d3,d5,d7);
endmodule