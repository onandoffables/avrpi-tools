Source directory
================

This directory contains various projects that you can use with AVRM boards.

Arduino-Makefile
----------------

To compile and upload Blink example:

	cd avrm/src/Arduino-Makefile/examples/Blink
	nano Makefile
	# change BOARD_TAG from 'uno' to 'avrm8' (or 'avrm12', 'avrm16', 'avrm32u4')
	make
	make avrm

LUFA-AVRM32U4
-------------

To compile and upload Keyboard example:

	cd avrm/src/LUFA-AVRM32U4/examples/Keyboard
	make
	make avrdude
