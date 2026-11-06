# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

Alessandro Rivera

Andrew Honcharenko

## Summary

In this lab we first, after looking at an SR-latch, designed a D-latch. We then created an 8 bit demultiplexer and a 1 input demultiplexer. We then created a four byte memory system using D-latch implementation. 2 Selector switches were used to select between the different outputs of the demultiplexer and d-latches. The D-latch allowed for the data passed through the demultiplexer to be stored. A multiplexer was then used to extract the data also with the selector switches, from the memory system and display the stored data on led 8 to 15.

## Lab Questions

### Why can we not just use structural Verilog to implement latches?

We cannot just use structural Verilog to implement latches because the latches have continuous feedback that loops around which requires statements such as always. Without the always statement it would be hard to have the output loop around and create the levels that are made with the latches. Just using structural Verilog the simulator could get stuck in an infinite loop.

### What is the meaning of always @(\*) in a sensitivity block?

The meaning of always @(\*) in a sensitivity block is to include all of the inputs into the always statement. The \* tells the simulator to include every input in the sensitivity list. Without the \* every input has to be included with an or in-between them.

### What importance is memory to digital circuits?

The importance of memory in digital system is that it allows circuits to remember previous states and store data this way. This also allows circuits to do sequential operations.

