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
export WALLPAPER_PATH=`~/.scripts/get_rand_wallpaper.sh`

# Colorschemes + wallpaper
~/.scripts/wal_complete.sh -i $WALLPAPER_PATH

# ----------------------
# MISC
# ----------------------

# Faster keyboard retype
xset r rate 250 45

# Startup apps
./.startup_apps.sh

exec bspwm
