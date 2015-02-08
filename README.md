AVRM setup
==========

setup
-----

	pi@raspberrypi ~/avrm $ ./setup
	#######################################################################
	#                                AVRM                                 #
	#######################################################################

	  Using board 'AVRM328' (ATmega328p)

	  Easy install:
		e)    install everything in 1 easy step

	  Custom install:
		a)    apt-get all prerequisites
		p)    patch arduino
		w)    install wiringPi
		d)    install dfu-programmer
		c)    compile + install avrdude from source
		b)    install pre-compiled avrdude binary
		v)    install avrm tool
		t)    make + upload test/blinky.hex
		f)    set ATmega328p fuses (with crystal)

		q)    quit

	  Enter your choice:

avrdude-6.1-linuxgpio
---------------------
This is plain, vanilla [avrdude-6.1](http://download.savannah.gnu.org/releases/avrdude/avrdude-6.1.tar.gz) as you can get it from [download.savannah.gnu.org](http://download.savannah.gnu.org/releases/avrdude/).

This compiles and installs avrdude from source, enabling avrdude to bitbang the Raspberry Pi GPIO pins using the 'linuxgpio' (sysfsgpio) interface that's standard available in avrdude-6.1.

Prerequisite to build avrdude from source (choose 'apt-get all prerequisites' to install this):

	sudo apt-get install autoconf bison flex

connections
-----------
Make the following connections between the AVR and the Raspberry Pi (don't forget GND and VCC, where VCC is 3.3V).

	SCK    =  11
	MOSI   =  10
	MISO   =  9
	RESET  =  8

avrdude usage:

	avrdude -c linuxgpio -p m328p -U flash:w:blinky.hex -v

If the project has a Makefile or is a cmake project, usually 'make flash' or something similar also works. Try 'make help'.
