# openofdm_tx simulation — RX vector generator

`gen_rx_vector.sh` runs the `openofdm_tx` testbench in iverilog and emits an IQ
sample file that the `openofdm_rx` testbench can read directly.


## Requirements

**Icarus Verilog must be installed** — it provides both `iverilog` (compiler) and
`vvp` (simulator), which the script checks for and refuses to run without.

```bash
sudo dnf install iverilog       # Fedora / RHEL
```

Verify with `iverilog -V`.


## Usage

```bash
cd ip/openofdm_tx/sim
./gen_rx_vector.sh <H_size> <NAME_FINAL_IQ>
```


## Required Padding

- 100 zero samples prepended before the frame starts.
- 200 zero samples appended after the frame starts.
- FC_MHz = 55220; written to metadata header at the top of file. 

