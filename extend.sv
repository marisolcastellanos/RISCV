module extend(input  logic [31:7] instr,
              input  logic [1:0]  immsrc,
              output logic [31:0] immext);
 
  always_comb
    case(immsrc) 
               
      2'b00: immext = 32'  // I-type 
               // {{20{Instr[31]}}, Instr[31:20]} 
      2'b01:   // S-type (stores)
               // 
      2'b10:   // B-type (branches)
               // 
      2'b11:   // J-type (jal)
      default: immext = 32'bx; // undefined
    endcase             
endmodule
