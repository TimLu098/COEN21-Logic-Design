module s10(input B1, A1, output s10_out);
    xor(s10_out, B1, A1);
endmodule

module s11(input B1, B0, A1, output s11_out);
    xor(s11_out, B1, B0, A1);
endmodule

module s00(input B0, A0, output s00_out);
    assign s00_out = A0 ^ B0;
endmodule

module s00(input B0, A0, output s01_out);
    assign s01_out = A0 ^ B0;
endmodule

module mux_s1(input in0, in1, sel, output out);
    wire x, y;
    and(x, in0, ~sel);
    and(y, in1, sel);
    or(out, x, y);
endmodule

module mux_s0(input in0, in1, sel, output out);
    assign out = (sel) ? in1 :　in0; 
endmodule

module s20(input A0, B0, B1, output s20_out);
    and(s20_out, A0, B0, B1);
endmodule

module s21(innput A0, B0, B1, output s21_out);
    assign s21_out = (A0 & B0) | B1;
endmodule

module mux_s1(input in0, in1, sel, output out);
    assign out = (sel) ? in1 :　in0; 
endmodule
