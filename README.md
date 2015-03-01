AVRPi setup
===========

This setup script makes it easy to install everything you need to program AVR microcontrollers from a Raspberry Pi. It installs (or has options to install):

- Arduino IDE 1.0.1 (with patches for board and programmer)
- avrdude-6.1 (with linuxgpio support)
- avrpi (tool to interact easily with your ATmel microcontroller)
- Arduino-Makefile (because friends don't let friends use the Arduino IDE)
- wiringpi (Gordon's superduper handy tool to interact with the Raspberry Pi GPIO)

ATmega32U4 specific:

- LUFA (the library to use if you're serious about creating a USB Device out of your AVR)
- dfu-programmer (to use a USB enabled board standalone with a custom bootloader)

install
-------

To install the AVRPi setup tool:

	cd
	git clone https://github.com/onandoffables/avrpi-tools
	cd avrpi-tools
	./setup

setup
-----

After you run ./setup, a menu appears. First choose which board you have.

	#######################################################################
	#                               AVRPi                                 #
	#######################################################################

	  AVRPi-328
		1)    ATmega328p @ 8MHz
		2)    ATmega328p @ 12MHz
		3)    ATmega328p @ 16MHz (overclocked)

	  AVRPi-32U4
		4)    ATmega32U4 @ 8 MHz

	  Gertware
		5)    Gertboard (ATmega328p @ 12 MHz)
		6)    Gertduino (ATmega328p @ 16 MHz)
		7)    Gertduino48 (ATmega48p @ 1 MHz)
		8)    Gertduino48 (ATmega48p @ 8 MHz)

	What board do you have:

Choose the number of the board (for example, 4) and press enter.

	#######################################################################
	#                               AVRPi                                 #
	#######################################################################
	
	  chip:  atmega328p
	  speed: 8000000
	
	  Install everything in 1 easy step:
	    e)    Arduino IDE + avrdude + wiringpi + avrpi
	
	  Custom install:
	    a)    apt-get all dependencies
	    p)    patch arduino
	    b)    install pre-compiled avrdude binary
	    c)    compile + install avrdude from source
	    w)    install wiringPi
	    v)    install avrpi tool
	
	  Fuses and test:
	    f)    set fuses for atmega328p
	    t)    make + upload test/blinky.hex
	
	  Extra software and projects:
	    m)    install Arduino-Makefile
	
	    q)    quit
	
	Enter your choice:

You have the option of installing everything in 1 easy step. Choose 'e' or 'z' for this. Using the pre-compiled version of avrdude is the fastest, but you can also compile from source. This will only take a couple of minutes anyway.

Use the 'custom install' options to tweak the installation process. For example, if you only want to install linuxgpio-enabled avrdude without all the Arduino cruft.
