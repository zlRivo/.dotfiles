# ----------------------
# CONFIG
# ----------------------
export EDITOR='nvim'

# ----------------------
# PATH DIRECTORIES
# ----------------------

export PATH="$PATH:$HOME/.scripts" # Scripts folder

# ----------------------
# THEME
# ----------------------

# Get a random wallpaper
export WALLPAPER_PATH=`get_rand_wallpaper.sh`

# Colorschemes + wallpaper
wal -i $WALLPAPER_PATH

# Generate alacritty colors
pywal_to_alacritty.sh

# ----------------------
# MISC
# ----------------------

# Faster keyboard retype
xset r rate 250 45

# Startup apps
# ./.startup_apps.sh

exec bspwm
