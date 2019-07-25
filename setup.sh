#!/bin/bash

cp .Xresources $HOME/.Xresources
cp -rf i3 $HOME/.config/i3
cp -rf ranger $HOME/.config/ranger
cp -rf .bashrc $HOME/
xrdb $HOME/.Xresources
bash
