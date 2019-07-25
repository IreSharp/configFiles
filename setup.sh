#!/bin/bash

cp .Xresources $HOME/.Xresources
cp -r i3 $HOME/.config/i3
cp -r ranger $HOME/.config/ranger
xrdb $HOME/.Xresources
