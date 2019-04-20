from libqtile import layout
from theming import theme

def init_floating_layout():
	return layout.Floating(float_rules=[
	    {'wmclass': 'confirm'},
	    {'wmclass': 'dialog'},
	    {'wmclass': 'download'},
	    {'wmclass': 'error'},
	    {'wmclass': 'file_progress'},
	    {'wmclass': 'notification'},
	    {'wmclass': 'splash'},
	    {'wmclass': 'toolbar'},
	    {'wmclass': 'confirmreset'},  # gitk
	    {'wmclass': 'makebranch'},  # gitk
	    {'wmclass': 'maketag'},  # gitk
	    {'wname': 'branchdialog'},  # gitk
	    {'wname': 'pinentry'},  # GPG key password entry
	    {'wmclass': 'ssh-askpass'},  # ssh-askpass
	    {'wmclass': 'Xephyr'},  #window manager testing w/ Xephyr
	], **theme.layouts)