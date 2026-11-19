module and_gate_tb ;
    reg p,q;
    wire r;

    and_gate dut (.a(p),.b(q),.y(r));

    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0,and_gate_tb);
        $monitor("a= %b,  b= %b,  c= %b", p,q,r);

        p = 0; q = 0; #10;
        p = 0; q = 1; #10;
        p = 1; q = 0; #10;
        p = 1; q = 1; #10;

        

        $finish;
    end

endmodule
    