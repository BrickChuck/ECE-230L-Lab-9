module memory_system(
    input [7:0] data,
    input store, // enable/store signal. store is used for the memory_system, and enable is used for byte_memeory
    input [1:0] selector, // address signal. Same as sel[1:0} used in other parts. 
    output [7:0] memory2
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
// wire to store enable address
// wire <---> selector
wire [3:0] w_store;
wire [7:0] d_storage [3:0];
wire [7:0] d_output [3:0];
// demux data byte
EightbitDemux data_demux (
        .sel0(selector[0]), 
        .sel1(selector[1]), 
        .din(data), 
        .out0(d_storage[0]),
        .out1(d_storage[1]),
        .out2(d_storage[2]),
        .out3(d_storage[3])
        );
// demux enable/store signal

OnebitDemux store_demux (

        .enable(store), 
        .sel(selector), //trying a different notation here for both sel[0] passes to selector[0] and the same for 1
        .out0(w_store[0]), 
        .out1(w_store[1]), 
        .out2(w_store[2]), 
        .out3(w_store[3])
        );
//define byte_memory here


byte_memory byte0 (.data(d_storage[0]), .enable(w_store[0]), .memory1(d_output[0]) );
byte_memory byte1 (.data(d_storage[1]), .enable(w_store[1]), .memory1(d_output[1]) );
byte_memory byte2 (.data(d_storage[2]), .enable(w_store[2]), .memory1(d_output[2]) );
byte_memory byte3 (.data(d_storage[3]), .enable(w_store[3]), .memory1(d_output[3]) );

EightbitMux final_output(
        .din0(d_output[0]),
        .din1(d_output[1]),
        .din2(d_output[2]),
        .din3(d_output[3]),
        .sel1(selector[1]),
        .sel0(selector[0]),
        .dout(memory2)
    );
    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
   
    

endmodule