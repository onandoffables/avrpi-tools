#!/bin/bash

if [ -d Arduino-Makefile ]; then
	echo "Directory exists: updating"
	cd Arduino-Makefile
	git pull
	cd ..
else
	echo "First time git clone: installing"
	git clone https://github.com/sudar/Arduino-Makefile
fi
