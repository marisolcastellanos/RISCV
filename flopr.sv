module flopr #(parameter WIDTH = 8)
              (input  logic             clk, reset,
               input  logic [WIDTH-1:0] d, 
               output logic [WIDTH-1:0] q);

  // add the logic for the d flip flop with reset
  
  always_ff @(posedge clk, posedge reset)
    if (reset) q<=0;
    else q<=d;
  
endmodule
