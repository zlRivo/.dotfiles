#!/bin/bash
if [ -z "${WALLPAPER_DIR}" ]; then
    echo `find -L ~/Pictures/wallpapers -type f | sort -R | tail -1`
else
    echo `find -L "${WALLPAPER_DIR}" -type f | sort -R | tail -1`
fi
