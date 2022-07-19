# ----------------------
# CONFIG
# ----------------------
export EDITOR='nvim'

# ----------------------
# THEME
# ----------------------

# Get a random wallpaper
# WALLPAPER=`~/.scripts/get_rand_wallpaper.sh`
WALLPAPER=~/Pictures/wallpapers/hololive/ayame_sword.png

# Colorschemes + wallpaper
~/.scripts/wal_complete.sh -i $WALLPAPER


# ----------------------
# SOUND
# ----------------------
# ~/.scripts/start_pipewire.sh &

# ----------------------
# MISC
# ----------------------

# Faster keyboard retype
xset r rate 250 45

# Startup apps
./.startup_apps.sh

exec bspwm
