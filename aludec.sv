module aludec(input  logic       opb5,
              input  logic [2:0] funct3,
              input  logic       funct7b5, 
              input  logic [1:0] ALUOp,
              output logic [2:0] ALUControl);

  logic  RtypeSub;
  assign RtypeSub = funct7b5 & opb5;  // TRUE for R-type subtract instruction

  always_comb
    case(ALUOp)
     // add the logic here 
      2'b00: 
        
        
      2'b01:
        
        
      2'b10:    
        case(funct3) 
          3'b010: 
            
          3'b110: 
            
            
          3'b111: 
            
            
          3'b000: 
            case(opb5||funct7b5)
              2'b11: 
                
              
          
            
    endcase
endmodule
