# Linux system-wise configuration files

These were pulled from my lubuntu 14.04 and my debian 8.6/8.7 jessie.

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
Added the last export path line to utilize user defined commands in **~/bin/**.

**~/.config/openbox/lxde-rc.xml**:
Remember to reload this file after editting by running ```openbox --reconfigure```.
Added keybinds for window manipulation to include MoveResizeTo and GrowToEdge actions.
Added keybind to start terminator using C-A-t.
Added keybind for Fn keys.

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

=====  
+ tlmgr error: ** `cannot setup TLPDB in /home/jwg20286/texmf at /usr/bin/tlmgr line 5308` ** is generated when tlmgr was not initialized. In most cases, launching the following command (as a normal user) solves the problem:  
`tlmgr init-usertree`  

+ Set tlmgr repository:  
`tlmgr option repository my-repository`  
for example, `my-repository` is `ftp://tug.org/historic/systems/texlive/2014/tlnet-final` for tlmgr2014.

+ Once set, one should be able to search packages with the command `tlmgr search --global --file package_file_name`, and then install it with the command `tlmgr install package_name`. One can also list all installed packages with the command `tlmgr list --only-installed`.  
