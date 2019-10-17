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
symlink "betterlockscreen/betterlockscreenrc" ".config/betterlockscreenrc"

mkdir -p "$HOME/scripts/lock"
symlink "betterlockscreen/lock.py" "scripts/lock/lock.py"
symlink "betterlockscreen/lines" "scripts/lock/lines"

# i3 blocks
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
mkdir -p "$HOME/.config/i3"
symlink "i3/config" ".config/i3/config"

# shufflewall
sys_symlink "shufflewall/shufflewall.service" "/etc/systemd/system/shufflewall.service"
sys_symlink "shufflewall/shufflewall.timer" "/etc/systemd/system/shufflewall.timer"

# monitor setup
sys_symlink "monitor/10-monitor.conf" "/etc/X11/xorg.conf.d/10-monitor.conf"
