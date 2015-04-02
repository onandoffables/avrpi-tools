test
====

A simple example for using a generic avr-gcc Makefile. It's compiled and uploaded when you choose 'make + upload test/blinky.hex' (option 't') in the setup menu. You can use it as a template for your own projects.

To build and flash this blinky example for the AVRPI328 board (8MHz), run:

	F_CPU=8000000 MCU=atmega328p make flash

To build and flash for the AVRPI32U4 board, run:

	FAM=4 F_CPU=8000000 MCU=atmega32u4 make flash

Or edit the Makefile. Uncomment these lines (remove the '#') somewhere around line 40-50:

	F_CPU = 8000000
	MCU = atmega328p  # or atmega32u4

Then you can just run:

	make flash

Please note that this overrides the setting from the menu. The 'FAM' variable is only used in this specific blinky example. You won't need it if you use this Makefile in your own project.
