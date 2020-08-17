# audio plugin dirs
export VST_PATH=/usr/lib/vst:/usr/local/lib/vst:~/.vst
export LXVST_PATH=/usr/lib/lxvst:/usr/local/lib/lxvst:~/.lxvst
export LADSPA_PATH=/usr/lib/ladspa:/usr/local/lib/ladspa:~/.ladspa
export LV2_PATH=/usr/lib/lv2:/usr/local/lib/lv2:~/.lv2
export DSSI_PATH=/usr/lib/dssi:/usr/local/lib/dssi:~/.dssi

# To avoid potential situation where cdm(1) crashes on every TTY, here we
# default to execute cdm(1) on tty1-tty3 only, and leave other TTYs untouched.
# if [[ "$XDG_VTNR" -le 3 ]]; then
#     # [[ -n "$CDM_SPAWN" ]] && return
#     # Avoid executing cdm(1) when X11 has already been started.
#     # [[ -z "$DISPLAY$SSH_TTY$(pgrep xinit)" ]] && exec cdm
#     exec cdm
# fi
exec cdm
