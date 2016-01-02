#!/bin/bash

# dependencies
sudo apt-get install -y libftdi1

# install deb
sudo dpkg -i avrdude_6.2-2_armhf.deb

# fix error by installing libftdi1
#sudo apt-get install -f

# so we don't need sudo
sudo chmod 4755 /usr/bin/avrdude
