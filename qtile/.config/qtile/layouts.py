from libqtile import layout

# LAYOUTS
# 

def init_layouts(layout_defaults):
	return [
	    layout.Columns(**layout_defaults, num_stacks=2),
	]

