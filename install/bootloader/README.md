Caterina bootloader
===================

Unzip LUFA-111009.zip to a folder LUFA-111009 in this directory.

url:   http://fourwalledcubicle.com/blog/2011/10/lufa-111009-released/
file:  http://lufa-lib.googlecode.com/files/LUFA-111009.zip

cd caterina
make
avrdude -v -c linuxgpio -p atmega32u4 -i 5 -U flash:w:Caterina.hex:i

or:
avrpi -f Caterina.hex
