module ModuloDisp(TOM, A, B, C, D, Saida_A, Saida_B, Saida_C, Saida_D, Saida_E, Saida_F, Saida_G);

    input wire TOM, A, B, C, D;
    output wire Saida_A, Saida_B, Saida_C, Saida_D, Saida_E, Saida_F, Saida_G;

    assign Saida_A = (C & ~A) | (A & ~TOM) | (B & ~TOM);
    assign Saida_B = (~A & B & ~C) | (~TOM & A & ~B) | (TOM & ~B & C) | (TOM & A & C);
    assign Saida_C = (C & ~TOM) | (~A & ~B & C) | (A & ~B & ~C);
    assign Saida_D = (B & TOM) | (A & TOM) | (A & B & ~C);
    assign Saida_E = (B & C) | (~TOM & ~A & B) | (A & ~B & ~C) | (TOM & A & ~B);
    assign Saida_F = (~A & B & ~C) | (A & B & TOM) | (A & B & C) | (A & C & B) | (A & ~B & ~C & ~TOM) | (~A & ~B & C & ~TOM);
    assign Saida_G = (~A & C) | (B & ~C) | (TOM & A & ~B); 

endmodule