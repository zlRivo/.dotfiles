#!/bin/bash
# Make sure dunstrc is cached
! [[ -f "$HOME/.cache/wal/dunstrc" ]] && exit 1

cp ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
exit 0
