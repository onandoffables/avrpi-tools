#!/bin/bash

if [ -d LUFA-AVRPI32U4 ]; then
	echo "Directory exists: updating"
	cd LUFA-AVRPI32U4
	git pull
	cd ..
else
	echo "First time git clone: installing"
	git clone https://github.com/onandoffables/LUFA-AVRPI32U4
	cd ..
fi
