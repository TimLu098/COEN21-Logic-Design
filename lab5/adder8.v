module myadder8(S, C8, V, A, B, C0);
	output [7:0]S;
	output C8, V;
	input [7:0]A, B;
	input C0;
	wire C4, V0;

	myadder4 low(S[3:0], C4, V0, A[3:0], B[3:0], C0);
	myadder4 high(S[7:4], C8, V, A[7:4], B[7:4], C4);
endmodule
