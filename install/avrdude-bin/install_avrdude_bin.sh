#!/bin/bash

echo 'installing avrdude to usr/bin'
sudo mkdir -p '/usr/bin'
sudo install -m 4755 bin/avrdude '/usr/bin'

echo 'installing avrdude.conf to /etc'
sudo mkdir -p '/etc'
sudo install -b -m 644 bin/avrdude.conf '/etc'

echo 'installing avrdude.1.gz to /usr/share/man/man1'
sudo mkdir -p '/usr/share/man/man1'
sudo install -m 644 bin/avrdude.1.gz '/usr/share/man/man1'
