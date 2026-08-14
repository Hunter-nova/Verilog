# VERILOG SIMULATION - QUICK GUIDE

A simple guide for compiling, running, and viewing Verilog simulations.

---

## 1. REQUIRED SOFTWARE

You need:

1. **Visual Studio Code**
2. **Icarus Verilog**
3. **Surfer Waveform Viewer**

---

## 2. INSTALLATION

### Visual Studio Code

Download and install **Visual Studio Code** for your operating system.

### Icarus Verilog

Install **Icarus Verilog** for your operating system.

After installation, check that the commands are available in the terminal:

```bash
iverilog -V
```

```bash
vvp -V
```

If both commands display version information, Icarus Verilog is installed correctly.

### Surfer Waveform Viewer

Install the **Surfer** extension in VS Code.

In VS Code:

**Extensions → Search "Surfer" → Install**

---

## 3. PROJECT FILES

Keep your Verilog design and testbench in the same folder.

Example:

```text
project/
├── design.v
└── testbench.v
```

* `design.v` → Verilog design
* `testbench.v` → Testbench used to simulate the design

---

## 4. OPEN THE TERMINAL

Open the project folder in VS Code.

Then select:

**Terminal → New Terminal**

Make sure the terminal is inside your project folder.

Example:

```powershell
PS D:\verilog>
```

---

## 5. COMPILE

Compile the Verilog design and testbench together:

```bash
iverilog -o simulation design.v testbench.v
```

If there are no errors, the compilation was successful.

The compiled simulation file will be created as:

```text
simulation
```

---

## 6. RUN THE SIMULATION

Run the compiled simulation:

```bash
vvp simulation
```

If your testbench generates a waveform, a `.vcd` file will be created.

---

## 7. GENERATE AND VIEW THE WAVEFORM

Your testbench should contain:

```verilog
$dumpfile("waveform.vcd");
$dumpvars(0, testbench_name);
```

After running:

```bash
vvp simulation
```

a waveform file will be generated:

```text
waveform.vcd
```

Open the `.vcd` file using the **Surfer Waveform Viewer** in VS Code.

---

## 8. GENERAL WORKFLOW

```text
Write Verilog
      ↓
Write Testbench
      ↓
Save Files
      ↓
Compile
      ↓
Run Simulation
      ↓
Generate .vcd
      ↓
Open .vcd in Surfer
      ↓
Analyze Waveform
```

---

## 9. QUICK COMMANDS

### Check Icarus Verilog

```bash
iverilog -V
```

```bash
vvp -V
```

### Compile

```bash
iverilog -o simulation design.v testbench.v
```

### Run

```bash
vvp simulation
```

### Check waveform files

**Windows PowerShell:**

```powershell
dir *.vcd
```

---

## NOTE

Replace:

* `design.v` with your Verilog design file
* `testbench.v` with your testbench file
* `simulation` with any name you want for the compiled simulation

Example:

```bash
iverilog -o mux_sim mux_4to1.v mux_4to1_tb.v
```

Then:

```bash
vvp mux_sim
```

---

## DONE! 🎉

You can now write, compile, simulate, and view Verilog waveforms using:

**VS Code + Icarus Verilog + Surfer**
