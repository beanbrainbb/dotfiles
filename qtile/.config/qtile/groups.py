from libqtile.config import Group, ScratchPad, DropDown
# from libqtile.layout.bsp import Bsp
from libqtile.layout.columns import Columns
from libqtile.layout.floating import Floating
# from libqtile.layout.matrix import Matrix
from libqtile.layout.max import Max
from libqtile.layout.ratiotile import RatioTile
# from libqtile.layout.slice import Slice
from libqtile.layout.stack import Stack
# from libqtile.layout.tile import Tile
# from libqtile.layout.tree import TreeTab
# from libqtile.layout.verticaltile import VerticalTile
from libqtile.layout.xmonad import MonadTall, MonadWide
# from libqtile.layout.zoomy import Zoomy
# from libqtile import layout

from theming import theme

l = theme.layouts

# LAYOUTS
# 

def init_floating_layout():
    # from libqtile.layout.floating import Floating
    return Floating(float_rules=[
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
    ], **l)
    
def init_layouts():
    return [
        Columns(**l, num_stacks=2),
        # Bsp(**l),
        # Matrix(**l),
        RatioTile(**l, ratio_increment=1, fancy=True),
        Stack(**l),
        # Tile(**l),
        # TreeTab(**l),
        # VerticalTile(**l),
        MonadTall(**l),
        MonadWide(**l),
        Max(**l)
    ]


TERMUX = "termite -e tmux"

# GROUPS
# 

# group defaults. name is mandadory, label is unique, init=True, persist=True

def init_groups():
    return [
            Group("!nfo",
                layout='columns',
                layouts=[
                    Columns(**l),
                    Stack(**l),
                    ],
                label='!'),
            Group(">kek",
                layout='max',
                layouts=[
                    Max(**l),
                    MonadWide(**l)
                    ],
                label="@"),
            Group("H4XX",
                layout='max',
                layouts=[
                    Max(**l),
                    Columns(**l),
                    MonadWide(**l),
                    ],
                label="#"),
            Group("$RIPTZ",
                layout='columns',
                layouts=[
                    Columns(**l),
                    RatioTile(**l, ratio_increment=1, fancy=True),
                    Stack(**l),
                    ],
                label="$"),
            Group(".conf",
                layout='columns',
                layouts=[
                    Columns(**l),
                    RatioTile(**l, ratio_increment=1, fancy=True),
                    Stack(**l),
                    ],
                label="%"),
            Group("X_x",
                layout='max',
                layouts=[
                    Max(**l),
                    ],
                label="🖻🖻^"),
            Group("browse",
                layout='monadtall',
                layouts=[
                    MonadTall(**l),
                    MonadWide(**l),
                    ],
                label="𑙩𑙩𑙩𑙩&"),
            Group(':D',
                layout='columns',
                layouts=[
                    Columns(**l),
                    ],
                label='*'),
            Group('/3/',
                layout='max',
                layouts=[
                    Max(**l)
                    ],
                label='9'),
            Group('/gd/',
                layout='max',
                layouts=[
                    Max(**l)
                    ],
                label='0'),
            ScratchPad('scratch', [
                    DropDown('term', TERMUX),
                ]),
    ]
