#!/bin/bash

if [ -d Arduino-Makefile ]; then
	echo "Directory exists: updating"
	cd Arduino-Makefile
	git checkout avrpi
	git pull
	cd ..
else
	echo "First time git clone: installing"
	git clone https://github.com/onandoffables/Arduino-Makefile
	cd Arduino-Makefile
	git checkout avrpi
	cd ..
fi
