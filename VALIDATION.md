# Validation and known gaps

Checked on 12 October 2026 with GNU `arm-none-eabi-as` 2.42, target `-mcpu=cortex-a9`. All seven recovered sources assemble. Original algorithm behavior is retained; text encoding and line endings were normalized.

The assembled linear-search object contains an unresolved external symbol, `end`. The other exercise limitations in the README were identified by source inspection: uninitialized counters, hard-coded memory, debugger/environment assumptions and missing termination paths. None of these exercises was linked or executed in this pass. Do not infer runtime correctness from successful assembly.

The parity/sum drafts contain additional logic errors (including conditional addition followed by unconditional addition); the historical directory preserves these as development evidence. A future implementation pass can add corrected runnable versions and behavioral tests alongside the originals.
