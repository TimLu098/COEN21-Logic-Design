module myadder4(S, COUT, V, A, B, CIN);
	output [3:0]S;
	output COUT, V;
	input [3:0]A, B;
	input CIN;
	wire [2:0] C;

    myfulladder stage0(S[0], C[0], A[0], B[0], CIN);
    myfulladder stage1(S[1], C[1], A[1], B[1], C[0]);
    myfulladder stage2(S[2], C[2], A[2], B[2], C[1]);
    myfulladder stage3(S[3], COUT, A[3], B[3], C[2]);

    assign V = COUT ^ C[2];

endmodule