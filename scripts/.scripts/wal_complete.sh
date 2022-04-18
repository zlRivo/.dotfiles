#!/bin/bash
wal "$@"
STATUS=$? # Get pywal return status
[ $STATUS -ne 0 ] && exit "$STATUS" # Check if error
# Call other scripts
~/.scripts/pywal_to_alacritty.sh
~/.scripts/pywal_to_dunst.sh

# Restart programs manually (if running)
pidof dunst && ~/.config/dunst/launch.sh

exit 0
