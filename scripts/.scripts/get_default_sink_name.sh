#/bin/bash
pamixer --get-default-sink | tail -n 1 | cut -d' ' -f3- | sed 's/"//g'
