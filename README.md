# Pipelined RISC-V Processor

32-bit RV32I-subset processor in Verilog with IF, ID, EX, MEM and WB stages. The project includes ALU, register file, control, instruction/data memory, a directed testbench, and design notes.

## Run
```bash
iverilog -g2012 -o simv rtl/*.v tb/tb_riscv_pipeline.v
vvp simv
```

## Included instruction subset
R-type ADD/SUB/AND/OR/XOR/SLT; I-type ADDI/ANDI/ORI/XORI/LW; SW; BEQ; JAL; LUI.

