# Design notes

The processor is organized as five conceptual stages: instruction fetch, decode/register read, execute/branch decision, memory access, and write-back. The included verification program exercises arithmetic, memory access, a load-use dependency, and a branch.

possible work for future: explicit forwarding multiplexers, a load-use stall unit, complete branch/jump flushing, pipeline-valid reset handling, expanded RV32I decoding, assertions, and post-synthesis verification.
