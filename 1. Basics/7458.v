module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    //declare wire assignments
    wire p2ab; 
    wire p1abc;
    wire p2cd; 
    wire p1def;
    wire or1;
    wire or2;
    
    //assign input wires
    assign p2ab = p2a && p2b; 
    assign p1abc = p1a && p1b && p1c;
    assign p2cd = p2c && p2d;
    assign p1def = p1d && p1e && p1f;
    assign or1 = p2cd || p2ab;
    assign or2 = p1abc || p1def;
    
    //assign output wires
    assign p2y = or1;
    assign p1y = or2;
    
    
endmodule