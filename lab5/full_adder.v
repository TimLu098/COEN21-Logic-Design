module myfulladder(S, COUT, A, B, CIN);
    output S, COUT;
    input A, B, CIN;

    assign S = (A^B) ^CIN;
    assign COUT = (A&B)|(CIN&A) |(B&CIN);
endmodule