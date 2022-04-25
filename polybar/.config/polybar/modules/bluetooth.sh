#!/bin/bash

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
    echo " disabled"
else
    if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]; then
        echo " enabled"
    else
        echo " connected"
    fi
fi
