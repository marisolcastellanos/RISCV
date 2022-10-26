module mux2 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, 
              input  logic             s, 
              output logic [WIDTH-1:0] y);

  //assign statement 
assign y = s ? d1 : d0;
  
endmodule

module mux3 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2,
              input  logic [1:0]       s, 
              output logic [WIDTH-1:0] y);

  //assign statement 
initial
begin
	if(s[1]&&!s[0])
		y = d1;
	else if(!s[1]&&s[0])
		y = d2;
	else
		y = d0;
end

  
endmodule
