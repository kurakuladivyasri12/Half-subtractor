// Testbench for Half Subtractor

module half_subtractor_tb;

    reg A;
    reg B;
    wire Difference;
    wire Borrow;

    // Instantiate the Half Subtractor
    half_subtractor uut (
        .A(A),
        .B(B),
        .Difference(Difference),
        .Borrow(Borrow)
    );

    initial begin

        $display("A B | Difference Borrow");
        $display("----------------------");

        A = 0; B = 0;
        #10;
        $display("%b %b |     %b        %b", A, B, Difference, Borrow);

        A = 0; B = 1;
        #10;
        $display("%b %b |     %b        %b", A, B, Difference, Borrow);

        A = 1; B = 0;
        #10;
        $display("%b %b |     %b        %b", A, B, Difference, Borrow);

        A = 1; B = 1;
        #10;
        $display("%b %b |     %b        %b", A, B, Difference, Borrow);

        $finish;
    end

endmodule