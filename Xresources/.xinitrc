#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
userprofile=$HOME/.xprofile
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
$sysprofile=/etc/xprofile

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Load xprofile

if [ -f $userprofile ]; then
[ -f $sysprofile ] && . $sysprofile
[ -f $userprofile ] && . $userprofile

session=${1:-spectrwm}

case $session in
	i3			) session="i3";;
	openbox		) session="openbox-session";;
	spectrwm	) session="spectrwm";;
	sway		) session="sway";;
	twm			) session="twm";;
esac

exec $session
