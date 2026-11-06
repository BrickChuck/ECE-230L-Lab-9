module d_latch(
    input [7:0] D, 
    input Enable, 
    output reg [7:0] Q, 
    output [7:0] NotQ
);

    always @(D, Enable) begin
        if (Enable) begin
            Q <= D;
        end
    end
    
    assign NotQ = ~Q;

endmodule