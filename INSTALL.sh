# clone this repo (or just download it)
# wget https://github.com/stranger777/xkb-birman-layout.git
cd xkb-birman-layout

# Create directory for your own layouts
mkdir -p ~/.config/xkb/symbols/

# Put this layout to your home directory
cp home/config/xkb/symbols/* ~/.config/xkb/symbols/

# Add this XCompose settings to your XCompose
cat home/XCompose >> ~/.XCompose

# You may remove the repo:
rm -r ../xkb-birman-layout

# Then for using this layout you should execute this command at start of your x session (e.x. in `~/.xinitrc`).

setxkbmap "birman-us,birman-ru" "birman,birman" "grp:caps_toggle,grp:ralt_switch" -print | xkbcomp -I${HOME}/.config/xkb - $DISPLAY
