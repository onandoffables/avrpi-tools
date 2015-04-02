Source directory
================

This directory contains various projects that you can use with AVRPI boards.

arduino-mk
----------

To compile and upload Blink example:

	cd arduino-mk
	nano board.mk # change BOARD_TAG
	cd projects/Blink
	make ispload

LUFA-AVRPI32U4
--------------

To compile and upload Keyboard example:

	cd LUFA-AVRPI32U4/examples/Keyboard
	make
	make avrdude
