# SYNCHRONOUS_UP_COUNTER

AIM:

To implement 4 bit synchronous up counter and validate functionality.

SOFTWARE REQUIRED: Quartus prime

THEORY

4 bit synchronous UP Counter

If we enable each J-K flip-flop to toggle based on whether or not all preceding flip-flop outputs (Q) are “high,” we can obtain the same counting sequence as the asynchronous circuit without the ripple effect, since each flip-flop in this circuit will be clocked at exactly the same time:

<img width="607" height="321" alt="1" src="https://github.com/user-attachments/assets/1191e927-0e9b-4a4d-b79b-f936f0d152ed" />

<img width="744" height="409" alt="2" src="https://github.com/user-attachments/assets/d90db7e6-e025-4ea1-b8de-974ebfb7d4ed" />

Each flip-flop in this circuit will be clocked at exactly the same time. The result is a four-bit synchronous “up” counter. Each of the higher-order flip-flops are made ready to toggle (both J and K inputs “high”) if the Q outputs of all previous flip-flops are “high.” Otherwise, the J and K inputs for that flip-flop will both be “low,” placing it into the “latch” mode where it will maintain its present output state at the next clock pulse. Since the first (LSB) flip-flop needs to toggle at every clock pulse, its J and K inputs are connected to Vcc or Vdd, where they will be “high” all the time. The next flip-flop need only “recognize” that the first flip-flop’s Q output is high to be made ready to toggle, so no AND gate is needed. However, the remaining flip-flops should be made ready to toggle only when all lower-order output bits are “high,” thus the need for AND gates.

PROGRAM:
```
module synchronous_up_counter (
    input wire clk,     
    input wire reset,   
    output reg [3:0] count 
);

always @(posedge clk) begin
    if (reset) begin
        count <= 4'b0000;
    end else begin
        count <= count + 1; 
    end
end
endmodule
```
TRUTH TABLE:

<img width="1088" height="373" alt="TRUTH TABLE" src="https://github.com/user-attachments/assets/50f2c091-184f-4031-9663-fded48dc46e1" />

RTL LOGIC UP COUNTER:

[EX 11 Dia.pdf](https://github.com/user-attachments/files/24151671/EX.11.Dia.pdf)

WAVEFORM:
[synchronous up counters.pdf](https://github.com/user-attachments/files/24171293/synchronous.up.counters.pdf)


NAME: HEMA PRIYA

REF NO: 25017270

RESULT: Hence a 4 bit synchronous up counter is implemented correctly.
