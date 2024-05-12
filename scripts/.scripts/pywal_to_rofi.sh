#!/bin/bash
# Make sure dunstrc is cached
! [[ -f "$HOME/.cache/wal/colors.rasi" ]] && exit 1

cp ~/.cache/wal/colors.rasi ~/.config/rofi/colors.rasi
exit 0
