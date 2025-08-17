# FPGA_Projects
FPGA projects and homeworks, spring of 2025

## Project Structure

### Example_Questions/VHDL/
Core VHDL examples and implementations:

#### Base Converters
- **base_converter.vhd** - Contains hex, octal, and BCD converters using algorithms like Double-Dabble for BCD conversion.

#### ALU Components
- **ALU/alu.vhd** - 16-bit ALU with arithmetic, logical, and mathematical operations including FSM-based stepper motor control.
- **ALU/alu_pkg.vhd** - Package containing helper functions for trigonometric and exponential operations using fixed-point arithmetic.

#### BRAM Applications
- **BRAM Application/block_ram.vhd** - Generic block RAM implementation with configurable width and depth.
- **BRAM Application/ram_address_writer.vhd** - Self-contained module that writes each cell's address to that cell using FSM control.
- **BRAM Application/bram_app_LED_Dance.vhd** - LED pattern generator using block RAM for dynamic light sequences.

#### BCD Adders
- **BCD Adder/bcd_adder_2digit.vhd** - Two-digit BCD adder with 7-segment display output and overflow detection.
- **BCD Adder/BCD_adder_simple.vhd** - Simple BCD adder with carry handling.
- **BCD Adder/bcd_to_7seg.vhd** - BCD to 7-segment display converter with multiple architecture implementations.

#### Button Counters
- **Button Counter/button_counter_7seg.vhd** - Button counter with debouncing and 7-segment display.
- **Button Counter/button_counter_simple.vhd** - Simple button counter with debounce integration.
- **Button Counter/PB_debounced.vhd** - Pushbutton debouncer using state machine for reliable input handling.

#### Communication Systems
- **AM_Modulator.vhd** - Amplitude modulation circuit using DDS for carrier generation.
- **Complex Mult/cumult.vhd** - Fully pipelined complex multiplier for signal processing applications.
- **Function Generator/function_generator.vhd** - Waveform generator using PWM and lookup tables.
- **Function Generator/function_generator.m** - MATLAB script for generating waveform data.

#### Digital Filters
- **Low Pass Filter (Z domain)/zdelay.vhd** - Z-domain unit delay.
- **Low Pass Filter (Z domain)/zdiv.vhd** - Z-domain division by 2 operation.
- **Low Pass Filter (Z domain)/zgain.vhd** - Z-domain gain element with configurable multiplication.
- **Low Pass Filter (Z domain)/zsum.vhd** - Z-domain addition operation.
- **Low Pass Filter (Z domain)/tb_low_pass_filter.vhd** - Testbench for low-pass filter implementation.

#### Parallel-Serial Converters
- **Parallel_Serial/piso.vhd** - Parallel-in serial-out shift register.
- **Parallel_Serial/sipo.vhd** - Serial-in parallel-out shift register.

#### PWM and Control
- **pwm_generator.vhd** - Configurable PWM generator with adjustable duty cycle and frequency.
- **PB_debounced.vhd** - Standalone pushbutton debouncer component.

#### RS232 Communication
- **RS232/baudcontroller.vhd** - Baud rate controller for RS232 communication with multiple speed options.
- **RS232/serialrx.vhd** - Serial receiver using state machine to decode 8-bit data with start/stop bits.
- **RS232/serialtx.vhd** - Serial transmitter that sends 8-bit data serially with proper start/stop bit framing.

#### Serial Communications
- **Serial Communications/manchester_decoder.vhd** - Manchester encoding decoder for data recovery.
- **Serial Communications/manchester_encoder.vhd** - Manchester encoding transmitter for data transmission.

#### Serial Arithmetic
- **serial_adder/serial_adder.vhd** - Bit-serial adder that processes N-bit operands one bit per clock cycle using shift registers.
- **serial_adder/serial_adder_tb.vhd** - Testbench for serial adder with comprehensive test cases.

#### Seven Segment Displays
- **Seven Segment Mux/BCD_Sev.vhd** - BCD to 7-segment converter with multiplexing capability.
- **Seven Segment Mux/Sev_MUX.vhd** - 7-segment display multiplexer for multi-digit displays.

#### Stepper Motor Control
- **Stepper Motor/stepper_motor.vhd** - Basic stepper motor controller with speed and direction control.
- **Stepper Motor/stepper_motor_fsm.vhd** - FSM-based stepper motor controller with enhanced state management.

#### UART Communication
- **UART/uart.vhd** - Complete UART implementation with both transmitter and receiver.
- **UART/uart_rx.vhd** - UART receiver with configurable baud rate and data format.
- **UART/uart_tx.vhd** - UART transmitter with configurable baud rate and data format.

### Homeworks/

#### HW_1/
- **Fulladder_61_bit/** - 61-bit full adder implementation with carry propagation.

#### HW_2/
- **ALU/** - Arithmetic Logic Unit with multiple operations.
- **Arith_circ/** - Arithmetic circuit implementations.
- **arith_circ_2/** - Enhanced arithmetic circuit with additional features.
- **BCD_adder/** - BCD (Binary Coded Decimal) adder for decimal arithmetic.
- **BCD2SEG/** - BCD to 7-segment display converter.

#### HW_3/
- **edge_trig_d_ff/** - Edge-triggered D flip-flop implementation.
- **level_trig_d_ff/** - Level-triggered D flip-flop implementation.
- **serial_adder/** - Serial adder using shift registers.
- **USR/** - Universal Shift Register with multiple shift modes.

#### HW_4/
- **ECHO/** - Echo circuit for testing UART.
- **ENCODER/** - Motor encoder implementation.
- **ICON_VIO/** - Integrated Controller with Virtual Input/Output interface for debugging.
- **PWM_RX/** - Pulse Width Modulation for motor control.
- **UART_RX/** - Universal Asynchronous Receiver/Transmitter receiver.
- **UART_TX/** - Universal Asynchronous Receiver/Transmitter transmitter.

#### HW_5/
- **HW_5_1_d/**
- **HW_5_1_e/**

### Midterm/
Midterm exam projects:

- **BCD_Sev/** - BCD to 7-segment display converter for midterm.
- **CALC/** - Calculator implementation with BCD arithmetic.
- **PB_debounced/** - Pushbutton debouncer using state machine.
- **Sev_MUX/** - 7-segment multiplexer for multi-digit display.
