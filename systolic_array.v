module processing_element (
    A,B,C1,C2,mode,clk
);
    input wire A_in,B_in,sel,reset_A, reset_B, reset_accum,clk;
    output wire C1,C2;
    reg A_reg, B_reg, Accumalate_reg;
    wire A_out, B_out;
    always@(reset_A && reset_B && reset_accum)begin
        if(reset_A) A_reg = 8'b0000_0000;
        if(reset_B) B_reg = 8'b0000_0000;
        if(reset_accum) reset_accum = 8'b0000_0000;

    end
    always@(posedge clk)begin
        A_reg <= A_in;
        B_reg <= B_in;
    end
    assign A_out = A_reg;
    assign B_out = B_reg;
endmodule