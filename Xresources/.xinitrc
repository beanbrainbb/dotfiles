#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
userkeymap=$HOME/.Xkeymap
userprofile=$HOME/.xprofile
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
sysprofile=/etc/xprofile

# merge in defaults and keymaps

[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$usermodmap" ] && xmodmap "$usermodmap"
[ -f "$userkeymap" ] && test -f "$userkeymap" && xkbcomp "$userkeymap" $DISPLAY
[ -f "$userprofile" ] && . "$userprofile"
[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f $sysprofile ] && . $sysprofile

session=${1:-spectrwm}

case $session in
	i3			) session="i3";;
	openbox		) session="openbox-session";;
	spectrwm	) session="spectrwm";;
	sway		) session="sway";;
	twm			) session="twm";;
esac

exec $session
