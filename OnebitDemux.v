module OnebitDemux(
    input enable,          
    input [1:0] sel, // address signal 
    output reg out0, out1, out2, out3 
);

    always @(enable, sel[1], sel[0]) begin
            out0 = 1'b0; //like in the last lab, we need to automatically make each output be a 0, to prevent any latching data
            out1 = 1'b0;
            out2 = 1'b0;
            out3 = 1'b0;
            case ({sel[1], sel[0]}) 
                2'b00: out0 = enable; //depending on what selection is chosen of sel[1] and sel[0], one of the out's will be
                // enables to high, which will then be sent to the dlatches (byte_memory)
                2'b01: out1 = enable; 
                2'b10: out2 = enable; 
                2'b11: out3 = enable; 
                default: ;     
            endcase
    end

endmodule