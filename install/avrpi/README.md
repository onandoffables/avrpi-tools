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

	pi@raspberrypi ~ $ avrpi -s
	Use 'avrpi -c' to edit settings:
	  board = avrpi328
	  chip = atmega328p
	  speed = 8000000
	  programmer = linuxgpio
	  port = /dev/ttyAMA0
	  baud = 9600
	  delay = 5

The 'port' and 'baud' settings apply to USART port that avrpi will use to communicate in 'screen' or 'minicom'. It's not used in programming with avrdude.

The 'delay' is the isp clock delay. Anything other than 0 adds the -i avrdude option. This is 5 by default, because it really helps with having error free transfers. Especially when changing fuse settings.
