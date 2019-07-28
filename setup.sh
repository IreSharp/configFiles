#!/bin/bash

# Install i3-gaps

sudo apt install git libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev -y && git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps && autoreconf --force --install && rm -rf build/ && mkdir -p build && cd build/ && ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers && make && sudo make install > log.txt

cd ../../

# Install cava
sudo apt-get install libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev libtool -y && wget http://ppa.launchpad.net/tehtotalpwnage/ppa/ubuntu/pool/main/c/cava/cava_0.6.0-0ubuntu3_amd64.deb && sudo dpkg -i cava*

# urxvt config
sudo apt install urxvt-unicode w3m w3m-img
rsync -av .Xresources $HOME/.Xresources
xrdb $HOME/.Xresources

# install compton
sudo apt install compton

# i3 config
rsync -av i3 $HOME/.config/i3

# Ranger config
sudo apt install ranger
rsync -av ranger $HOME/.config/ranger
