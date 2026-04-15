# 8-bit ALU ASIC Project (RTL-to-GDS) using OpenLane + Sky130

## Overview
This project implements an 8-bit ALU in Verilog and hardens it through a full RTL-to-GDSII flow using OpenLane (Sky130 PDK).

## ALU Operations
- `000` ADD
- `001` SUB
- `010` AND
- `011` OR
- `100` XOR
- `101` SHL
- `110` SHR

Flags:
- `carry`
- `zero`

## Tools Used
- OpenLane
- OpenROAD
- Yosys
- OpenSTA
- Magic
- Netgen
- KLayout
- Sky130 PDK

## Flow Status
- RTL to GDS flow: ✅ Completed
- Setup violations: ✅ None (run4)
- Hold violations: ✅ None (run4)
- DRC/LVS: ✅ Completed in flow logs
- Note: Non-fatal warnings (e.g., max fanout) may exist.

## Directory Structure
- `src/` RTL and testbench
- `openlane/` OpenLane config
- `reports/` key outputs (metrics, DEF, GDS, gate-level netlist)
- `docs/images/` screenshots

## How to Run
```bash
cd /mnt/d/vlsi/OpenLane
make mount
flow.tcl -design alu8 -tag run4 -overwrite
```

## Key Output Files
- `results/final/gds/alu8.gds`
- `results/final/def/alu8.def`
- `results/final/verilog/gl/alu8.v`
- `reports/metrics.csv`

## Disclaimer
In ASIC flow, “100% perfect” is not absolute; quality is evaluated by signoff checks under defined constraints and corners.
