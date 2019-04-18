from libqtile import bar, widget
from libqtile.config import Screen
from theming import theme as qtile_theme

theme = qtile_theme.theme

# SCREENS
# 

def init_screens():
	return [
	    Screen(
	        top=bar.Bar([
	            widget.GroupBox(rounded=False, hide_unused=True,
	            	background=theme['foreground'],
	            	foreground=theme['color1'],
	            	spacing=0, padding=0),
	            widget.TextBox(text="◤ ", fontsize=32,
	            	spacing=0, padding=0),
	            # TODO: Make CurrentLayout Widget display custom texts.
	            # > Possibly as simple as editing layout.name
	            widget.CurrentLayout(scale=0.6),
	            widget.Prompt(prompt='%>', padding=32),
	            widget.TextBox(padding=100),
	            widget.TextBox('◢', fontsize=32,
	            	spacing=0, padding=0),
	            widget.TaskList(icon_size=0, spacing=10,
	            	highlight_method='block',
	            	border=theme['color3'],
	            	background=theme['foreground'],
	            	foreground=theme['color1']),
	            widget.TextBox('◤', fontsize=32,
	            	spacing=0, padding=0),
	            widget.TextBox(padding=100),
	            widget.TextBox('◢', fontsize=32),
	            widget.Systray(background=theme['foreground']),
	            widget.TextBox(background=theme['foreground'], padding=4),
	            widget.Clock(background=theme['foreground'],
	            	foreground=theme['color1'],
	            	format='%Y%m%d[%w].%H%M:%S'),
	            widget.TextBox(background=theme['foreground'], padding=4),
	            widget.Pomodoro(foreground=theme['color1'],
	            	background=theme['foreground']),
	            widget.TextBox(background=theme['foreground'], padding=4),
	            ], 15),
	    ),
	]

