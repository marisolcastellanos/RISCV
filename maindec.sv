module maindec(input  logic [6:0] op,
               output logic [1:0] ResultSrc,
               output logic       MemWrite,
               output logic       Branch, ALUSrc,
               output logic       RegWrite, Jump,
               output logic [1:0] ImmSrc,
               output logic [1:0] ALUOp);

  logic [10:0] controls;

  //assing the control signals values form the control
  

  always_comb
    case(op)
    // RegWrite_ImmSrc_ALUSrc_MemWrite_ResultSrc_Branch_ALUOp_Jump
      7'b0000011: controls = RegWrite 1 _ImmSrc 00 _ALUSrc a0 b1 _MemWrite 0 _ResultSrc 01 _Branch 0_ALUOp 00 _Jump 0 // lw
                             {1,00,0,1,0,01,0,00,0}
      7'b0100011: controls =  // sw
      7'b0110011: controls =  // R-type 
      7'b1100011: controls =  // beq
      7'b0010011: controls =  // I-type ALU
      7'b1101111: controls =  // jal
      default:    controls =  // non-implemented instruction
    endcase
endmodule
