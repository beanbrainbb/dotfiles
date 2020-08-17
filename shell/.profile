# To avoid potential situation where cdm(1) crashes on every TTY, here we
# default to execute cdm(1) on tty1-tty3 only, and leave other TTYs untouched.
# if [[ "$XDG_VTNR" -le 3 ]]; then
#     # [[ -n "$CDM_SPAWN" ]] && return
#     # Avoid executing cdm(1) when X11 has already been started.
#     # [[ -z "$DISPLAY$SSH_TTY$(pgrep xinit)" ]] && exec cdm
#     exec cdm
# fi
exec cdm
