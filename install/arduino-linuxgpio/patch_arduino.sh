#!/bin/bash

# check if Arduino IDE is installed
if [ ! -f /usr/share/arduino/hardware/arduino/programmers.txt ]; then
	echo "Arduino IDE probably not installed. Please install that first."
	echo "sudo apt-get install arduino"
	exit 1;
fi

echo "copy programmers.txt"
sudo mv /usr/share/arduino/hardware/arduino/programmers.txt /usr/share/arduino/hardware/arduino/programmers.txt.bak
sudo cp patches/programmers.txt '/usr/share/arduino/hardware/arduino'

echo "copy boards.txt"
sudo mv /usr/share/arduino/hardware/arduino/boards.txt /usr/share/arduino/hardware/arduino/boards.txt.bak
sudo cp patches/boards.txt '/usr/share/arduino/hardware/arduino'

echo "copy USBCore.cpp"
sudo mv /usr/share/arduino/hardware/arduino/cores/arduino/USBCore.cpp /usr/share/arduino/hardware/arduino/cores/arduino/USBCore.cpp.bak
sudo cp patches/USBCore.cpp '/usr/share/arduino/hardware/arduino/cores/arduino/USBCore.cpp'


echo ""
echo "Make sure to use avrdude with linuxgpio enabled:"
echo "https://github.com/onandoffables/avrdude-linuxgpio"

