module my_Status_code(PB1, EQ, Codes);
    input PB1, EQ;
    output reg [3:0] Codes;
    wire[1:0]S;
    assign S[0] = EQ;
    assign S[1] = PB1;

    always @(*)
        case(S)
        0: Codes = 4'b1100;
        1: Codes = 4'b1101;
        2: Codes = 4'b1110;
        3: Codes = 4'b1111;

        endcase
endmodule