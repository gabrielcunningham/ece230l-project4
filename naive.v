module naive (
    input A, B, C, D,
    output Y
);

assign Y = (~A & ~B & ~C &  D) | // 1
           (~A & ~B &  C & ~D) | // 2
           (~A & ~B &  C &  D) | // 3
           (~A &  B & ~C & ~D) | // 4
           (~A &  B &  C & ~D) | // 6
           ( A & ~B &  C & ~D) | // 10
           ( A &  B & ~C & ~D) | // 12
           ( A &  B &  C & ~D);  // 14

endmodule
