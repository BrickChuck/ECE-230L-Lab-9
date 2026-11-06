module byte_memory( //this is our dlatch for part2 of the lab
    input [7:0] data,
    input enable,
    output reg [7:0] memory1
);

    // Herein, implement D-Latch style memory
    // that stores the input data into memory
    // when store is high

    // Memory should always output the value
    // stored, and it should only change
    // when store is high
    
    always @(data, enable) begin
        if (enable) begin
            memory1 <= data;
        end
    end

endmodule