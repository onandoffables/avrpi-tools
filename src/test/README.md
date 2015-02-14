blinky
======

To build and flash this blinky example for the AVRM328 board, run:

	MCU=atmega328p make flash

To build and flash for the AVRM32U4 board, run:

	MCU=atmega32u4 make flash

Or edit the Makefile. Uncomment one of the lines (remove the '#') somewhere around line 42:

	#MCU = atmega328p
	#MCU = atmega32u4

Then you can just run:

	make flash

Please note that this overrides the setting from the menu.
