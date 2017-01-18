# Linux system-wise configuration files

These were pulled from my lubuntu 14.04 and my debian 8.6 jessie.

If the operating system is installed while not formatting the home partition, texlive manager, tlmgr, needs to be initiated in order to work.

=====

**etc/fstab**:
Added relatime option to root and home directories as an SSD optimization. Added discard option to enable trim for root and home directories (check trim support: use command ```$ lsblk -D```. Check the values of DISC-GRAN and DISC-MAX columns, non-zero values indicate TRIM support).

**etc/rc.local**:
Added line to change i/o schedule to deadline.

**etc/wicd/encryption/templates/peap-uf**: 
Created to login uf wifi for wifi using wicd. Remember to add file to **active** in the same directory, and then restart wicd.

**usr/share/X11/xorg.conf.d/50-synaptics.conf**: 
Added VertEdgeScroll, VertScrollDelta, and HorizEdgeScroll, to allow one finger touchpad scroll.

**~/.bashrc**:
Uncommented ```force_color_prompt=yes```, so that PS1 is in effect to show colored and bold primary prompt.
Added the last export path line to utilize user defined commands in ~/bin/.

**~/.config/openbox/lxde-rc.xml**:
Added keybinds for window manipulation to include MoveResizeTo and GrowToEdge actions.
Added keybind to start terminator using C-A-t.

**~/.config/terminator/config**:
Pulled from zenburn project to use zenburn color scheme.

**~/.config/lxpanel/LXDE/panels/panel**:
The only thing I have changed is to set the lxde digital clock settings clock format to ```%m-%d%a %R```.

**~/.config/leafpad/leafpadrc**:
Leafpad configuration file.

**~/.vim/colors/solarized.vim**:
Solarized color scheme for vim. Pulled from solarized project.

**~/.vimrc**:
Vim configuration file.

**~/bin/pdrive**:
UF physics department pdrive connection command file.

**~/environments/py342_env/bin/activate**:
Virtual environment activate source, personal codes for appending pythonpath is added at the end.

=====
**~/texmf/tex/latex/mymacro/mymacro.sty**:
Latex macro package.
