#!/bin/sh

PATH="$HOME/bin:$PATH"

# screw java
wmname LG3D
export _JAVA_AWT_WM_NONREPARENTING=1

# statusbar
if [ -x $HOME/go/bin/gods ]; then
	$HOME/go/bin/gods &
fi

while true; do
	dwm 2>$HOME/.dwmerr || break
done

killall gods

# unscrew java
unset _JAVA_AWT_WM_NONREPARENTING
wmname ""
