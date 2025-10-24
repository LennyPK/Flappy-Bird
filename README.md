# Flappy Bird FPGA Implementation - COMPSYS 305

This project implements the popular Flappy Bird game on an FPGA (Field Programmable Gate Array) using VHDL. The game features real-time graphics rendering, collision detection, and interactive gameplay using a mouse interface. This project was developed as part of the COMPSYS 305 course.

## Project Structure

The project is organized into several key VHDL components:

- `structure.vhd` - Main game architecture and component integration
- `main_menu.vhd` - Game menu and state management
- `drawings.vhd` - Graphics and sprite rendering
- `vga_sync.vhd` - VGA display synchronization
- `mouse.vhd` - Mouse input handling
- `rgb_functions.vhd` - Color processing utilities
- `pixel_functions.vhd` - Pixel manipulation functions
- `char_rom.vhd` - Character ROM for text rendering
- `death_screen.vhd` - Game over screen implementation

## Features

- Real-time VGA graphics rendering
- Mouse-based control system
- Multiple game states (menu, gameplay, death screen)
- Collision detection system
- Score tracking and display
- Power-up system
- Smooth animations and transitions
- Character ROM for text rendering
- Custom background and ground rendering

## Technical Implementation

- VHDL-based hardware description
- Component-based architecture
- State machine implementation for game logic
- VGA synchronization for display output
- Mouse input processing
- RGB color processing
- Pixel-level graphics manipulation
- Character ROM for text display

## Hardware Requirements

- FPGA development board with VGA output
- Mouse interface
- VGA monitor
- Quartus Prime development environment
- ModelSim for simulation

## Building and Running

1. Open the project in Quartus Prime
2. Compile the VHDL files
3. Program the FPGA
4. Connect VGA monitor and mouse
5. Power on the system

## Development Tools

- Quartus Prime for FPGA synthesis and programming
- ModelSim for VHDL simulation
- VGA monitor for display
- Standard mouse for input

## Project Resources

The project includes several documentation files:
- `MiniProjectIntroduction.pdf`
- `MiniProject2022.pdf`
- `MiniProject-VGA&LFSR.pdf`
- `MiniProject-Mouse.pdf`
