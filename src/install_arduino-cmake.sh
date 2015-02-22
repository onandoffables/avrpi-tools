#!/bin/bash

if [ -d arduino-cmake ]; then
	echo "Directory exists: updating"
	cd arduino-cmake
	git checkout avrpi
	git pull
	cd ..
else
	echo "First time git clone: installing"
	git clone https://github.com/onandoffables/arduino-cmake
	cd arduino-cmake
	git checkout avrpi
	cd ..
fi
