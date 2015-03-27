avrpi
=====

'avrpi' is a tool that makes it easier to talk to your AVR chip on the Raspberry Pi.

	pi@raspberrypi ~ $ avrpi -h
	Usage: avrpi [options] <filename>

	[options] is any of the following:
	  -f <file>   flash <file>    flash <file> to avrpi board
	  -u <file>   upload <file>   upload <file> using caterina bootloader
	  -d <file>   upload <file>   upload <file> using Atmel DFU bootloader
	  -i          info            show info about chip
	  -r          reset           reset AVR chip
	  -b          bootloader      enter bootloader mode (HWB fuses set)
	  -m          minicom         start minicom on /dev/ttyACM0 @ 9600
	  -n          screen          start screen on /dev/ttyACM0 @ 9600
	  -h          help            show this info
	  -c          config          edit avrpi config file
	  -s          show            show config

Depending on what board you have selected in the setup menu, these settings are saved in '/etc/avrpi.cfg'

	#board can be avrpi168, avrpi328, avrpi32u4, gertboard328, gertduino328, gertduino48
	board=avrpi32u4

	#chip can be atmega168p, atmega328p, atmega32u4, atmega48p
	chip=atmega32u4

	#speed 8000000, 12000000, 16000000
	speed=8000000

	#programmer linuxgpio, gpio
	programmer=linuxgpio

	#port /dev/ttyAMA0, /dev/ttyUSB0, /dev/ttyACM0
	port=/dev/ttyACM0

	#baud 9600, 38400, 57600, 115200 
	baud=9600

	#delay 0, 5, 20 (isp clock delay)
	#anything other than 0 adds -i avrdude option
	delay=5

The 'port' and 'baud' settings apply to USART port that avrpi will use to communicate in 'screen' or 'minicom'. It's not used in programming with avrdude.

The 'delay' is the isp clock delay. Anything other than 0 adds the -i avrdude option. This is 5 by default, because it really helps with having error free transfers. Especially when changing fuse settings.
