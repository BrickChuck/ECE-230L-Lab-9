module EightbitMux(
    input [7:0] din0, din1, din2, din3,   
    input sel1, sel0,        
    output reg [7:0]dout     
);

    always @(din3, din2, din1, din0, sel1, sel0) begin
            case ({sel1, sel0}) 
                2'b00:   dout = din0;
                2'b01:   dout = din1;
                2'b10:   dout = din2;
                2'b11:   dout = din3;
                
            endcase
        end

endmodule	