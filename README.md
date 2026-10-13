# ARM assembly laboratory

Historical ARM assembly exercises by Lars Goozen from CSCE A248, Computer Organization and Assembly Language Programming, University of Alaska Anchorage (Fall 2023).

This collection covers array traversal, conditional execution, searching, register use and subroutine structure. It preserves the recovered source behavior and makes known limitations explicit.

| Exercise | Topic | Original-source limitation |
|---|---|---|
| [Strided array sum](exercises/strided-array-sum.s) | Post-index addressing and loop control | Uses hard-coded memory at `0x20004000`; no program exit |
| [Even/odd count](exercises/even-odd-count.s) | Bit testing and conditional branches | Count registers R0/R1 require initialization; no exit routine |
| [Minimum/maximum and indices](exercises/min-max-index.s) | Comparisons and index tracking | Loop uses R8 without initializing it; index convention needs review |
| [Linear-search subroutine](exercises/linear-search-subroutine.s) | `BL`, stack preservation, return via LR | Branches to unresolved `end`; requires a configured stack |
| [Historical variants](historical) | Alternate array data and earlier sum drafts | Draft behavior preserved; not presented as corrected solutions |

## Assemble the exercises

With GNU Arm Embedded binutils installed:

```sh
sh scripts/assemble.sh
```

All seven files assemble for a Cortex-A9 target. **Assembly is a syntax check, not a successful linked or executed program.** These files assume a teaching/debugger environment and are not Linux executables. See [VALIDATION.md](VALIDATION.md) before attempting to run them.

The linear-search source originally sat under Hardware Concepts in an older archive. Its Blackboard submission establishes that it belongs to this ARM course. [PROVENANCE.json](PROVENANCE.json) records that correction and the source variants.

See [attribution](NOTICE.md), the [RISC-V and FPGA laboratory](https://github.com/legooz/riscv-fpga-lab), the [C/C++ portfolio](https://github.com/legooz/c-cpp-portfolio), and the [engineering portfolio index](https://github.com/legooz/engineering-portfolio).
