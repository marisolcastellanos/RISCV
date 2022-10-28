module extend(input  logic [31:7] instr,
              input  logic [1:0]  immsrc,
              output logic [31:0] immext);
 
  always_comb
    case(immsrc) 
               
      2'b00: immext = {{20{Instr[31]}}, Instr[31:20]}  // I-type 
               // 
      2'b01: immext =  {{20{Instr[31]}}, Instr[31:25], Instr[11:7]}   // S-type (stores)
               // 
      2'b10: immext = {{20{Instr[31]}}, Instr[7], Instr[30:25], Instr[11:8], 1’b0}   // B-type (branches)
               // 
      2'b11: immext = {{12{Instr[31]}}, Instr[19:12], Instr[20], Instr[30:21], 1’b0}   // J-type (jal)
      default: immext = 32'bx; // undefined
    endcase             
endmodule
