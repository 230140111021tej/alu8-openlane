# 8-bit ALU ASIC Project (RTL-to-GDSII) using OpenLane + Sky130

## 1) Overview
This project implements an **8-bit Arithmetic Logic Unit (ALU)** in Verilog and demonstrates a complete **RTL-to-GDSII ASIC flow** using **OpenLane** with the **Sky130 PDK**.

The repository includes:
- RTL design
- Verification testbench + waveform evidence
- OpenLane configuration
- Physical design outputs (DEF, GDS, gate-level netlist)
- Signoff-oriented reports and metrics
- Visual proof (flow logs, layout, reports, waveforms)

---

## 2) ALU Functionality

### Inputs
- `a[7:0]`
- `b[7:0]`
- `op[2:0]`

### Outputs
- `y[7:0]`
- `carry`
- `zero`

### Supported Operations
- `000` → ADD
- `001` → SUB
- `010` → AND
- `011` → OR
- `100` → XOR
- `101` → SHL
- `110` → SHR

Flags:
- `carry` (operation-dependent)
- `zero` (asserted when output is zero)

---

## 3) Technology & Toolchain
- **PDK:** Sky130 (`sky130_fd_sc_hd`)
- **Flow:** OpenLane / OpenROAD
- **Synthesis:** Yosys
- **Static Timing Analysis:** OpenSTA
- **DRC:** Magic / KLayout checks in flow
- **LVS:** Netgen
- **Verification:** Icarus Verilog + GTKWave
- **Lint (optional):** Verilator

---

## 4) Repository Structure

```text
alu8-openlane/
├── src/                  # RTL sources
├── tb/                   # Testbench
├── openlane/             # OpenLane config.json
├── reports/              # Key generated outputs (GDS/DEF/GL netlist/metrics)
├── scripts/              # Helper scripts (simulation/OpenLane run)
├── IMAGES/Reports/       # Screenshots and visual evidence
├── constraints/          # Constraints-related files (if used)
├── .github/workflows/    # CI workflow(s)
└── README.md
