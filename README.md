AVRM setup
==========

install
-------

To install the AVRM setup tool:

	cd
	git clone https://github.com/onandoffables/avrm
	cd avrm
	./setup

setup
-----

After you run ./setup, a menu appears. First choose which board you have.

	#######################################################################
	#                                AVRM                                 #
	#######################################################################

	  AVRM328
		1)    ATmega328p @ 8MHz
		2)    ATmega328p @ 12MHz
		3)    ATmega328p @ 16MHz (overclocked)

	  AVRM32U4
		4)    ATmega32U4 @ 8 MHz

	  Gertware (ATmega328p)
		5)    Gertboard (ATmega328p @ 12 MHz)
		6)    Gertduino (ATmega328p @ 16 MHz)

	What board do you have:

Choose the number of the board (for example, 4) and press enter.

	#######################################################################
	#                                AVRM                                 #
	#######################################################################

	  Using a board with a ATmega32U4

	  Install everything in 1 easy step:
		e)    use pre-compiled avrdude (like a noob)
		z)    compile + install avrdude from source (like a pro)

	  Custom install:
		a)    apt-get all prerequisites
		p)    patch arduino
		w)    install wiringPi
		d)    install dfu-programmer
		b)    install pre-compiled avrdude binary
		c)    compile + install avrdude from source
		v)    install avrm tool
		f)    set ATmega32U4 fuses (with crystal)
		g)    set ATmega32U4 fuses (with crystal + HWB enabled)
		t)    make + upload test/blinky.hex

	  Extra software and projects:
		m)    install Arduino-Makefile
		s)    install arduino-cmake
		l)    install LUFA-AVRM32U4

		q)    quit

	  Enter your choice:

You have the option of installing everything in 1 easy step. Choose 'e' or 'z' for this. Using the pre-compiled version of avrdude is the fastest, but you can also compile from source. This will only take a couple of minutes anyway.

Use the 'custom install' options to tweak the installation process. For example, if you only want to install linuxgpio-enabled avrdude without all the Arduino cruft.

avrdude-6.1-linuxgpio
---------------------
This is plain, vanilla [avrdude-6.1](http://download.savannah.gnu.org/releases/avrdude/avrdude-6.1.tar.gz) as you can get it from [download.savannah.gnu.org](http://download.savannah.gnu.org/releases/avrdude/).

This compiles and installs avrdude from source, enabling avrdude to bitbang the Raspberry Pi GPIO pins using the 'linuxgpio' (sysfsgpio) interface that's standard available in avrdude-6.1.

Prerequisite to build avrdude from source (choose 'apt-get all prerequisites' to install this):

	sudo apt-get install libusb-1.0-0-dev libusb-dev libftdi-dev autoconf bison flex

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
