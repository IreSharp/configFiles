#!/bin/bash

TMPBG=lockscreen.png
scrot $TMPBG 
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG -gravity center -composite -matte $TMPBG
#i3lock -u -i $TMPBG
i3lock -i $TMPBG
rm $TMPBG
