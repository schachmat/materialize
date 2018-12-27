#!/bin/bash --login

# screw java
wmname LG3D
export _JAVA_AWT_WM_NONREPARENTING=1

# statusbar
if [ -x $HOME/code/go/bin/gods ]; then
	$HOME/code/go/bin/gods &
fi

while true; do
	dwm 2>$HOME/.dwmerr || break
done

# start the apocalypse
killall gods

# unscrew java
unset _JAVA_AWT_WM_NONREPARENTING
wmname ""
