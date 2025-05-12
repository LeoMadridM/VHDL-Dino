# VHDL-Dino
VHDL Project of Chrome Dino Game
This project is a the Google Chrome Dinosaure Game made with VHDL in an FPGA.
This project was made by Melisa Saucedo and Leonardo Madrid. 
This program requieres an VGA interface and an FPGA.

Top level entity
It consists on a 50 MHz clock, Reset, Start, Enable and a push button (Inputs). Reset, Start and Enable are switches of the FPGA. The outputs are the Vertical sincronous signal (VSYNC), Horizontal sincronous signal (HSYNC) and the RGB bits.
Components:
    DIVISOR_FREQ
    CONT_H800
    CONT_V525
    MQEDO_VSYNC
    MQEDO_HSYNC
    SEQ_DINO
    SEQ_OBST
    SEQ_OBST2

Component Explanation:
    DIVISOR_FREQ = Frequency Divider
        We divided the clock frequency so that our would work with 25 MHz and that would mean that the game works with 60 frames per second.
    CONT_H800
        This component works for stablishing the 800 horizontal pixeles of the VGA. Only 640 are visible. 
    CONT_V525
        This component works for stablishing the 525 Vertical pixeles of the VGA. Only 480 are visible. The enable of the CONT_H800 and the event of the clock makes it so it starts the count. The outputs are the count and a syncronous signal.
    MQEDO_VSYNC = VSYNC State Machine
    
        Its function is to indicate in which part of the VGA (Vertical) its on. Depending on which pixel its in, its the state (syncronous pulse, back porch, visible zone, front porch). The output is the logic state of the vertical signal. 
    MQEDO_HSYNC = HSYNC State Machine
        Its function is to indicate in which part of the VGA (Horizontal) its on and according to its inputs, calculate the VGA bits. Depending on which pixel its in, its the state (syncronous pulse, back porch, visible zone, front porch). The output is the logic state of the vertical signal. CONT_V525 and CONT_H800 are requiered in order to "paint" the display of the game.
