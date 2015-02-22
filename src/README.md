Source directory
================

This directory contains various projects that you can use with AVRPI boards.

Arduino-Makefile
----------------

To compile and upload Blink example:

	cd avrpi/src/Arduino-Makefile/examples/Blink
	nano Makefile
	# change BOARD_TAG from 'uno' to 'avrpi8' (or 'avrpi12', 'avrpi16', 'avrpi32u4')
	make
	make avrpi

LUFA-AVRPI32U4
--------------

To compile and upload Keyboard example:

	cd avrmpi/src/LUFA-AVRPI32U4/examples/Keyboard
	make
	make avrdude
