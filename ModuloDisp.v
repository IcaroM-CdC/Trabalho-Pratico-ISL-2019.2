module ModuloDisp(TOM_module, NOTAS, SAIDA);

    input wire TOM_module;
    input wire [2:0] NOTAS;     // definindo uma entrada de 3 bits(barramento) como especificado no TP
    output wire [6:0] SAIDA;    // definindo uma saida de 7 bits igualmente especificado no TP

    // atribuindo as equações booleanas às saidas

    assign SAIDA[6] = ~((NOTAS[0] & ~NOTAS[2]) | (NOTAS[2] & ~TOM_module) | (NOTAS[1] & ~TOM_module));
    assign SAIDA[5] = ~((~NOTAS[2] & NOTAS[1] & ~NOTAS[0]) | (~TOM_module & NOTAS[2] & ~NOTAS[1]) | (TOM_module & ~NOTAS[1] & NOTAS[0]) | (TOM_module & NOTAS[2] & NOTAS[0]));
    assign SAIDA[4] = ~((NOTAS[0] & ~TOM_module) | (~NOTAS[2] & ~NOTAS[1] & NOTAS[0]) | (NOTAS[2] & ~NOTAS[1] & ~NOTAS[0]));
    assign SAIDA[3] = ~((NOTAS[1] & TOM_module) | (NOTAS[2] & TOM_module) | (NOTAS[2] & NOTAS[1] & ~NOTAS[0]));
    assign SAIDA[2] = ~((NOTAS[1] & NOTAS[0]) | (~TOM_module & ~NOTAS[2] & NOTAS[1]) | (NOTAS[2] & ~NOTAS[1] & ~NOTAS[0]) | (TOM_module & NOTAS[2] & ~NOTAS[1]));
    assign SAIDA[1] = ~((~NOTAS[2] & NOTAS[1] & ~NOTAS[0]) | (NOTAS[2] & NOTAS[1] & TOM_module) | (NOTAS[2] & NOTAS[1] & NOTAS[0]) | (NOTAS[2] & NOTAS[0] & NOTAS[1]) | (NOTAS[2] & ~NOTAS[1] & ~NOTAS[0] & ~TOM_module) | (~NOTAS[2] & ~NOTAS[1] & NOTAS[0] & ~TOM_module));
    assign SAIDA[0] = ~((~NOTAS[2] & NOTAS[0]) | (NOTAS[1] & ~NOTAS[0]) | (TOM_module & NOTAS[2] & ~NOTAS[1])); 

endmodule

