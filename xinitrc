#!/bin/sh

if [ -d /etc/X11/xinit/xinitrd.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

VBoxClient-all

xset +ft /usr/share/fonts/local
xset +ft /usr/share/fonts
xset fp rehash

urxvtd -q -o -f

conky | while read -r; do xsetroot -name "$REPLY"; done &

xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Control_L'
xmodmap -e 'add Control = Control_L'

#wicd-gtk -t &
#xcmpmgr &

# java config...
wmname LG3D
#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.45.x86_64/jre
export _JAVA_AWT_WM_NONREPARENTING=1

exec dwm

