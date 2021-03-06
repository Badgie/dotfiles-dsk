#!/bin/bash

symlink() {
    printf "Symlinking '%s', to path '%s'\n" "repo/$1" "$HOME/$2"
    ln -s "$(realpath ./"$1")" "$HOME/$2"
}

sys_symlink() {
    printf "Symlinking '%s', to path '%s'\n" "repo/$1" "$2"
    # require sudo for file system symlinks
    sudo ln -s "$(realpath ./"$1")" "$2"
}

# lock screen
# dependency: betterlockscreen
symlink "betterlockscreen/betterlockscreenrc" ".config/betterlockscreenrc"
mkdir -p "$HOME/scripts/lock"
symlink "betterlockscreen/lock.py" "scripts/lock/lock.py"
symlink "betterlockscreen/lines" "scripts/lock/lines"

# i3 blocks
# dependency: i3blocks
mkdir -p "$HOME/.config/i3blocks"
symlink "i3blocks/mem.py" ".config/i3blocks/mem.py"
symlink "i3blocks/spotify.py" ".config/i3blocks/spotify.py"
symlink "i3blocks/eth.py" ".config/i3blocks/eth.py"
symlink "i3blocks/cpu.py" ".config/i3blocks/cpu.py"
symlink "i3blocks/load.py" ".config/i3blocks/load.py"
symlink "i3blocks/wttr.py" ".config/i3blocks/wttr.py"
symlink "i3blocks/disk.py" ".config/i3blocks/disk.py"
mkdir -p "$HOME/.config/i3blocks/dmi-weather"
symlink "i3blocks/dmi-weather/cities" ".config/i3blocks/dmi-weather/cities"
symlink "i3blocks/dmi-weather/scrloc.py" ".config/i3blocks/dmi-weather/scrloc.py"
symlink "i3blocks/dmi-weather/weather.py" ".config/i3blocks/dmi-weather/weather.py"
symlink "i3blocks/config" ".config/i3blocks/config"
symlink "i3blocks/config-small" ".config/i3blocks/config-small"

# i3
# dependency: i3wm
mkdir -p "$HOME/.config/i3"
symlink "i3/config" ".config/i3/config"

# escrot uploading
# dependency: escrotum-git
mkdir -p "$HOME/scripts/escrotum-upload"
symlink "escrotum-upload/escrot-upload.sh"

# tixati
# dependency: tixati
mkdir -p "$HOME/.config/tixati"
symlink "tixati/tix.colors" ".config/tixati/tix.colors"

# spicetify
# dependency: spicetify-cli
mkdir -p "$HOME/.config/spicetify/Themes/Custom"
mkdir -p "/usr/share/spicetify-cli/Themes/Custom"
symlink "spicetify/Custom/color.ini" "/usr/share/spicetify-cli/Themes/Custom/color.ini"
symlink "spicetify/Custom/user.css" "/usr/share/spicetify-cli/Themes/Custom/user.css"

# spotirec
# dependency: spotirec-git
mkdir -p "$HOME/.config/spotirec"
symlink "spotirec/spotirec.conf" ".config/spotirec/spotirec.conf"

# shufflewall
sys_symlink "shufflewall/shufflewall.service" "/etc/systemd/system/shufflewall.service"
sys_symlink "shufflewall/shufflewall.timer" "/etc/systemd/system/shufflewall.timer"

# monitor setup
sys_symlink "monitor/xorg.conf" "/etc/X11/xorg.conf"
symlink "monitor/monitor-setup.sh" "scripts/monitor-setup.sh"
