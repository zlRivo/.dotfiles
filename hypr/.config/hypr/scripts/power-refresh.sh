#!/usr/bin/env bash

# Define monitor name and standard properties
MONITOR="eDP-1"
POS="0x0"
SCALE="1"

# Target refresh rates
HIGH_HZ="144"
LOW_HZ="60"
RES="1920x1080"

# Check power status (Adjust BAT0/AC depending on your laptop hardware)
if cat /sys/class/power_supply/ACAD/online | grep -q "1"; then
    # Plugged in (High Refresh Rate)
    hyprctl eval "hl.monitor({ output = '$MONITOR', mode = '${RES}@${HIGH_HZ}', position = '$POS', scale = $SCALE, disabled = false })"
else
    # On Battery (Low Refresh Rate)
    hyprctl eval "hl.monitor({ output = '$MONITOR', mode = '${RES}@${LOW_HZ}', position = '$POS', scale = $SCALE, disabled = false })"
fi
