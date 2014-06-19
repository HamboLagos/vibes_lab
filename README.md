# Wireless Point-Point Acceleration Measurement Network 
## Hamilton Little
hamilton.little@gmail.com

#### Project Overview

Wires attached to the accelerometers used in the vibrations lab added damping to
the experiments being observed, thereby distracting from the learning objective.
A wireless point-point communication network was proposed to alleviate this
issue. Developed a custom lossless sliding window communication protocol
(TCP-based) to allow the sensor station to transmit data to a receiver base.
Built drivers to sample accelerometer at transmitter station, and recreate the
signal at the receiver for display on an oscilloscope.

### Code Overview

The code is written to run on a Pololu Wixel. The Wixel features a TI 8051
series chip, with built in USB and wireless transmission support. The Wixel
Board contains a mini-usb connector and an antenna printed directly on the
circuit board.

The latest version of the code is 5.1. Version updates are documented in the
header comments of the respective source files. The code is split between two
Wixel Units, a transmitter and receiver. The code for each is located in the tx
and rx folders, respectively. Device driver and support code are located in the
/lib folder, whereas main application code is placed in /src.

### Acknowledgments

The author would like to thank the following for their aid in this project

1. Dr. Hemanth Poroumamilla, for his enthusiasm and expertise in both the higher
   learning objectives of the vibrations lab, and the minute details of vibrations
   analysis.

2. Dr. John Ridgley, for his introduction to and training on the Pololu Wixel
   platform.
