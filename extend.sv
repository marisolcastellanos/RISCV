module extend(input  logic [31:7] instr,
              input  logic [1:0]  immsrc,
              output logic [31:0] immext);
 
  always_comb
    case(immsrc) 
               // I-type 
      2'b00:   //
               // S-type (stores)
      2'b01:   // 
               // B-type (branches)
      2'b10:   //
               // J-type (jal)
      2'b11:   // 
      default: immext = 32'bx; // undefined
    endcase             
endmodule
